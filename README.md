AVR MANAGE
===============================================
avrmanage is a set of three scripts that simplify the process of managing avr devices.
avrmanage has a configuration file at /etc/avr/avr.conf that decides the programmer and device of avrmanage.
avrmanage needs the following packages for its functioning correctly.<br />
• gcc-avr <br />
• avr-libc <br />
• avrdude <br />

avrC
-----------------------------------------------
avrC is a script that checks the status of a avr device
It is used for checking the signature of the device and the fuses.

avrF
-----------------------------------------------
avrF is a script that flashes programs to the avr device
It relies on a Makefile created by avrmm.

avrmm
------------------------------------------------
avrmm is a script that creates the makefile for avrF.
It asks for the frequency, chip name, avrdude chip id, and the file without extension
If you fill in all of this correctly, avrF will run smoothly without any trouble

--------------------------------------------------------------------------------
all these scripts have the serial port set in avrdude's configuration file.
if you wish to change the port, visit the avrdude.conf file in the /etc directory and change the serial_port parameter.

INSTALLATION
---------------------------------------------------------------------------------
For installation, type the following commands:<br />
./configure [architecture] <br />
dpkg -i avrmanage_current-stable_all.deb <br />

If both commands show no red coloured text, then you can start working!<br />
Happy exploring! :)
