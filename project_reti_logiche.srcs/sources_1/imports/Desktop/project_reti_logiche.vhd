-- Author: Andrea Franchini
-- Mat: 890304 | CP: 10560276
-- SINTETIZZA CHE E' UN PIACERE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is
    Port (
        i_clk         : in  std_logic;
        i_start       : in  std_logic;
        i_rst         : in  std_logic;
        i_data        : in  std_logic_vector(7 downto 0);
        o_address     : out std_logic_vector(15 downto 0);
        o_done        : out std_logic;
        o_en          : out std_logic;
        o_we          : out std_logic;
        o_data        : out std_logic_vector (7 downto 0)
    );
end project_reti_logiche;

architecture FSM of project_reti_logiche is
    
    -- Definizione degli stati
    type state_type is (IDLE, MEM_ASK, MEM_GET, ENCODE);

    -- Registro per lo stato
    signal state, next_state: state_type := IDLE;

    -- Altri FFs
    signal d_done, q_done: std_logic := '0';

    signal d_get_addr, q_get_addr: std_logic := '1';
    signal d_addr, q_addr: std_logic_vector(7 downto 0) := (others => '0');

    signal d_wz_bit, q_wz_bit: std_logic := '0';
    signal d_wz_num, q_wz_num: std_logic_vector(2 downto 0) := "000";
    signal d_wz_offset, q_wz_offset: std_logic_vector(3 downto 0) := "0001";
begin
    -- Clock (sync) + Reset (Async)
    state_sync: process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            -- reset state
            state <= IDLE;
            -- reset FFs
            q_done <= '0';
            q_get_addr <= '1';
            q_addr <= (others => '0');
            q_wz_bit <= '0';
            q_wz_num <= "000";
            q_wz_offset <= "0001";
        elsif rising_edge(i_clk) then
            -- set state
            state <= next_state;
            -- set FFs
            q_done <= d_done;
            q_get_addr <= d_get_addr;
            q_addr <= d_addr;
            q_wz_bit <= d_wz_bit;
            q_wz_num <= d_wz_num;
            q_wz_offset <= d_wz_offset;
        end if;
    end process;

    -- Parte Combinatoria
    state_comb: process(
        state,
        i_start,
        i_data,
        q_done,

        q_get_addr,
        q_addr,

        q_wz_bit,
        q_wz_num,
        q_wz_offset
    )
    
    variable diff: std_logic_vector(7 downto 0);
    
    begin
        -- Update State
        next_state <= state;

        -- Update FFs
        d_done <= q_done;

        d_get_addr <= q_get_addr;
        d_addr <= q_addr;

        d_wz_bit <= q_wz_bit;
        d_wz_num <= q_wz_num;
        d_wz_offset <= q_wz_offset;

        -- Default Outputs
        o_address <= (others => '0');
        o_data <= (others => '0');
        o_en <= '0';
        o_we <= '0';
        o_done <= q_done;

        case state is
            when IDLE =>
                -- Update/Reset FFs
                d_get_addr <= '1';
                d_addr <= (others => '0');

                d_wz_bit <= '0';
                d_wz_num <= (others => '0');
                d_wz_offset <= "0001";

                if i_start = '0' and q_done = '1' then
                    -- porto o_done a 0 al prossimo clk
                    d_done <= '0';
                end if;

                -- start only if we've finished/never started
                if i_start = '1' and q_done = '0' then
                    next_state <= MEM_ASK;
                else
                    next_state <= IDLE;
                end if;
            when MEM_ASK =>
                o_address(3) <= q_get_addr;
                o_address(2 downto 0) <= q_wz_num;
                o_en <= '1';

                next_state <= MEM_GET;
            when MEM_GET =>
                if q_get_addr = '1'
                then -- solo per il primo "ciclo"
                    d_get_addr <= '0';
                    d_addr <= i_data; -- cache i_data

                    next_state <= MEM_ASK; -- comincia il secondo ciclo in RAM(0)
                else
                
                    diff := std_logic_vector( signed(q_addr) - signed(i_data) );
                    
                    if  signed(diff) <= 3 and signed(diff) >= 0
                    then -- q_addr is in WZ
                        d_wz_bit <= '1';

                        case diff(1 downto 0) is
                            when "00" => d_wz_offset <= "0001";
                            when "01" => d_wz_offset <= "0010";
                            when "10" => d_wz_offset <= "0100";
                            when "11" => d_wz_offset <= "1000";
                            when others => d_wz_offset <= "0001";
                        end case ;

                        next_state <= ENCODE;
                    else -- q_addr non e' in WZ
                        d_wz_bit <= '0';

                        if q_wz_num = "111"
                        then -- siamo arrivati a RAM(8)
                             -- e q_addr non e' in nessuna WZ
                            next_state <= ENCODE;
                        else
                            d_wz_num <= std_logic_vector(unsigned(q_wz_num) + 1);
                            next_state <= MEM_ASK;
                        end if;
                    end if;
                end if;
            when ENCODE =>
                if q_wz_bit = '1'
                then
                    o_data <= "1" & q_wz_num & q_wz_offset;
                else
                    o_data <= "0" & q_addr(6 downto 0);
                end if;
                
                o_address <= std_logic_vector(to_unsigned(9, 16));
                o_en <= '1';
                o_we <= '1';

                next_state <= IDLE;
                d_done <= '1';
        end case;
        
        -- [opzionale] SE i_start VA A zero PRIMA DI o_done
        if state /= IDLE and i_start = '0' then
            next_state <= IDLE;
        end if;
    end process;
end FSM;