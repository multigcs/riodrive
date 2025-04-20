openocd -f interface/stlink-v2.cfg  -f target/stm32f4x.cfg -c init \
	-c 'reset halt' \
	-c 'stm32f2x unlock 0' \
	-c 'flash write_image erase Firmware/build/ODriveFirmware.elf' \
	-c 'reset run' \
	-c exit

