all: $(file).c
	mkdir -p build-$(chip-id)
	avr-gcc -Os -c -mmcu=$(chip) -o build-$(chip-id)/$(file).o $(file).c -DF_CPU=$(freq)
	avr-gcc -mmcu=$(chip) -o build-$(chip-id)/$(file).elf build-$(chip-id)/$(file).o $(dependency1) $(dependency2)
	avr-objcopy -O ihex build-$(chip-id)/$(file).elf build-$(chip-id)/avr.hex
	avr-size --mcu=$(chip) --format=avr -C build-$(chip-id)/$(file).elf
	avrdude -c $(programmer) -p $(chip-id) -e -U flash:w:build-$(chip-id)/avr.hex -b $(baudrate)
