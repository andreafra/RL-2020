library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity project_tb is
end project_tb;

architecture projecttb of project_tb is
constant c_CLOCK_PERIOD		: time := 100 ns;
signal   tb_done		: std_logic;
signal   mem_address		: std_logic_vector (15 downto 0) := (others => '0');
signal   tb_rst	                : std_logic := '0';
signal   tb_start		: std_logic := '0';
signal   tb_clk		        : std_logic := '0';
signal   mem_o_data,mem_i_data	: std_logic_vector (7 downto 0);
signal   enable_wire  		: std_logic;
signal   mem_we		        : std_logic;

type ram_type is array (10 downto 0) of std_logic_vector(7 downto 0);

-- come da esempio su specifica
signal RAM: ram_type := (0 => std_logic_vector(to_unsigned( 111 , 8)), -- WZ 1
                         1 => std_logic_vector(to_unsigned( 13 , 8)),
                         2 => std_logic_vector(to_unsigned( 22 , 8)),
                         3 => std_logic_vector(to_unsigned( 31 , 8)),
                         4 => std_logic_vector(to_unsigned( 37 , 8)),
                         5 => std_logic_vector(to_unsigned( 45 , 8)),
                         6 => std_logic_vector(to_unsigned( 77 , 8)),
                         7 => std_logic_vector(to_unsigned( 91 , 8)), -- WZ 7
                         8 => std_logic_vector(to_unsigned( 94 , 8)), -- addr to encode
			             others => (others =>'0'));

component project_reti_logiche is
port (
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
end component project_reti_logiche;


begin
UUT: project_reti_logiche
port map (
          i_clk      	=> tb_clk,
          i_start       => tb_start,
          i_rst      	=> tb_rst,
          i_data    	=> mem_o_data,
          o_address  	=> mem_address,
          o_done      	=> tb_done,
          o_en   	=> enable_wire,
          o_we 		=> mem_we,
          o_data    	=> mem_i_data
          );

p_CLK_GEN : process is
begin
    wait for c_CLOCK_PERIOD/2;
    tb_clk <= not tb_clk;
end process p_CLK_GEN;


MEM : process(tb_clk)
begin
    if rising_edge(tb_clk) then
        if enable_wire = '1' then
            if mem_we = '1' then
                RAM(conv_integer(mem_address))  <= mem_i_data;
                mem_o_data                      <= mem_i_data after 1 ns;
            else
                mem_o_data <= RAM(conv_integer(mem_address)) after 1 ns;
            end if;
        end if;
    end if;
end process;


test : process is
begin 
    -- init
    wait for 100 ns;
    wait for c_CLOCK_PERIOD;
    -- start reset
    tb_rst <= '1';
    wait for c_CLOCK_PERIOD;
    -- stop reset
    tb_rst <= '0';
    wait for c_CLOCK_PERIOD;
    -- start encoding
    tb_start <= '1';
    wait for c_CLOCK_PERIOD;
    wait for c_CLOCK_PERIOD * 5;
    tb_rst <= '1';
    wait for c_CLOCK_PERIOD;
    tb_rst <= '0';
    wait for c_CLOCK_PERIOD;
    -- start encoding again
    tb_start <= '1';

    wait until tb_done = '1';
    wait for c_CLOCK_PERIOD;
    tb_start <= '0';
    wait until tb_done = '0';

    assert RAM(9) = std_logic_vector(to_unsigned( 248 , 8)) report "TEST FALLITO. Expected  248  found " & integer'image(to_integer(unsigned(RAM(9))))  severity failure;
--    wait for c_CLOCK_PERIOD;
    
--    wait for c_CLOCK_PERIOD * 5;
--    -- start encoding again
--    tb_start <= '1';
--    wait for c_CLOCK_PERIOD;
--    wait until tb_done = '1';
--    wait for c_CLOCK_PERIOD;
--    tb_start <= '0';
--    wait until tb_done = '0';

--    assert RAM(9) = std_logic_vector(to_unsigned( 129 , 8)) report "TEST FALLITO. Expected  129  found " & integer'image(to_integer(unsigned(RAM(9))))  severity failure;
    
 
    assert false report "Simulation Ended!, TEST PASSATO" severity failure;
end process test;

end projecttb; 
