	set_location_assignment PIN_G1 -to led_data[0]
	set_location_assignment PIN_G2 -to led_data[1]
	set_location_assignment PIN_F1 -to led_data[2]
	set_location_assignment PIN_F2 -to led_data[3]
	set_location_assignment PIN_D1 -to led_data[4]
	set_location_assignment PIN_C2 -to led_data[5]
	set_location_assignment PIN_L3 -to led_data[6]
	set_location_assignment PIN_J1 -to led_data[7]
	#
	set_location_assignment PIN_R4 -to sdram_clk
	set_location_assignment PIN_N15 -to sdram_cke
	set_location_assignment PIN_A15 -to sdram_cs_n
	set_location_assignment PIN_B14 -to sdram_we_n
	set_location_assignment PIN_A14 -to sdram_cas_n
	set_location_assignment PIN_C14 -to sdram_ras_n
	set_location_assignment PIN_B16 -to sdram_ba[0]
	set_location_assignment PIN_C15 -to sdram_ba[1]
	
	set_location_assignment PIN_D15 -to sdram_addr[0]
	set_location_assignment PIN_D16 -to sdram_addr[1]
	set_location_assignment PIN_F15 -to sdram_addr[2]
	set_location_assignment PIN_F16 -to sdram_addr[3]
	set_location_assignment PIN_N16 -to sdram_addr[4]
	set_location_assignment PIN_L15 -to sdram_addr[5]
	set_location_assignment PIN_L16 -to sdram_addr[6]
	set_location_assignment PIN_K15 -to sdram_addr[7]
	set_location_assignment PIN_K16 -to sdram_addr[8]
	set_location_assignment PIN_J15 -to sdram_addr[9]
	set_location_assignment PIN_C16 -to sdram_addr[10]
	set_location_assignment PIN_J16 -to sdram_addr[11]
	set_location_assignment PIN_G16 -to sdram_addr[12]
	
	set_location_assignment PIN_A7 -to sdram_data[0]
	set_location_assignment PIN_B10 -to sdram_data[1]
	set_location_assignment PIN_A10 -to sdram_data[2]
	set_location_assignment PIN_B11 -to sdram_data[3]
	set_location_assignment PIN_A11 -to sdram_data[4]
	set_location_assignment PIN_B12 -to sdram_data[5]
	set_location_assignment PIN_A12 -to sdram_data[6]
	set_location_assignment PIN_B13 -to sdram_data[7]
	set_location_assignment PIN_B7 -to sdram_data[8]
	set_location_assignment PIN_A6 -to sdram_data[9]
	set_location_assignment PIN_B6 -to sdram_data[10]
	set_location_assignment PIN_A5 -to sdram_data[11]
	set_location_assignment PIN_B5 -to sdram_data[12]
	set_location_assignment PIN_A4 -to sdram_data[13]
	set_location_assignment PIN_B4 -to sdram_data[14]
	set_location_assignment PIN_A3 -to sdram_data[15]

	set_location_assignment PIN_G15 -to sdram_udqm
	set_location_assignment PIN_A13 -to sdram_ldqm
	set_location_assignment PIN_B3 -to rst_n
	set_location_assignment PIN_N11 -to lcd_hs
	set_location_assignment PIN_P11 -to lcd_vs
	#lcd 
	set_location_assignment PIN_L14 -to lcd_blank
	
	set_location_assignment PIN_M11 -to lcd_red[5]
	set_location_assignment PIN_P14 -to lcd_red[6]
	set_location_assignment PIN_R16 -to lcd_red[7]
	set_location_assignment PIN_N13 -to lcd_red[8]
	set_location_assignment PIN_N12 -to lcd_red[9]

	
	set_location_assignment PIN_K10 -to lcd_green[4]
	set_location_assignment PIN_J11 -to lcd_green[5]
	set_location_assignment PIN_J12 -to lcd_green[6]
	set_location_assignment PIN_J13 -to lcd_green[7]
	set_location_assignment PIN_J14 -to lcd_green[8]
	set_location_assignment PIN_L13 -to lcd_green[9]
	
	set_location_assignment PIN_K12 -to lcd_blue[5]
	set_location_assignment PIN_P16 -to lcd_blue[6]
	set_location_assignment PIN_P15 -to lcd_blue[7]
	set_location_assignment PIN_K11 -to lcd_blue[8]
	set_location_assignment PIN_M12 -to lcd_blue[9]
	set_location_assignment PIN_N14 -to lcd_dclk
	#cmos
	set_location_assignment PIN_L7 -to cmos_vsync
	set_location_assignment PIN_P3 -to cmos_pclk
	set_location_assignment PIN_N5 -to cmos_xclk
	
	set_location_assignment PIN_M6 -to cmos_data[7]
	set_location_assignment PIN_N3 -to cmos_data[6]
	set_location_assignment PIN_K2 -to cmos_data[5]
	set_location_assignment PIN_L6 -to cmos_data[4]
	set_location_assignment PIN_J2 -to cmos_data[3]
	set_location_assignment PIN_K1 -to cmos_data[2]
	set_location_assignment PIN_N1 -to cmos_data[1]
	set_location_assignment PIN_N2 -to cmos_data[0]
	
	set_location_assignment PIN_L1 -to cmos_rst_n
	set_location_assignment PIN_L2 -to cmos_pwdn
	set_location_assignment PIN_P6 -to i2c_sclk
	set_location_assignment PIN_M7 -to i2c_sdat
	set_location_assignment PIN_N6 -to cmos_href
	#sysclk
	set_location_assignment PIN_E1 -to clk_50
	set_location_assignment PIN_L4 -to beep
	#ds1302
	set_location_assignment PIN_T4 -to ds1302_sda
	set_location_assignment PIN_T3 -to ds1302_sclk
	set_location_assignment PIN_R5 -to ds1302_ce
	#uart
	set_location_assignment PIN_G5 -to rx
	set_location_assignment PIN_C3 -to tx
	
	# eth
	set_location_assignment PIN_R10 -to phy_rst_n
	#
	set_location_assignment PIN_T7 -to phy_clk_tx
	set_location_assignment PIN_T10 -to tx_en
	set_location_assignment PIN_T6 -to tx_data[0]
	set_location_assignment PIN_R7 -to tx_data[1]
	set_location_assignment PIN_R8 -to tx_data[2]
	set_location_assignment PIN_L9 -to tx_data[3]
	set_location_assignment PIN_B1 -to key1
	#
	set_location_assignment PIN_T15 -to phy_clk_rx
	set_location_assignment PIN_R12 -to rx_dv
	set_location_assignment PIN_T13 -to rx_data[0]
	set_location_assignment PIN_R13 -to rx_data[1]
	set_location_assignment PIN_T14 -to rx_data[2]
	set_location_assignment PIN_R14 -to rx_data[3]