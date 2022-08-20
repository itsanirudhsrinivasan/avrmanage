AVR MANAGE
===============================================
avrmanage has been upgraded so that avrmanage only compiles code, but very efficiently. You just use the avrmm command and you get going!
• gcc-avr <br />
• avr-libc <br />
• avrdude <br />
avrmm
------------------------------------------------
avrmm is a script that creates the makefile for compiling and flashing.
You need to fill in the parameters it asks for. Or else the makefile will crash!
After you fill in the parameters it asks for, just run make and watch it work!

--------------------------------------------------------------------------------
INSTALLATION
---------------------------------------------------------------------------------
For installation, type the following commands:<br />
chmod 770 configure avrmanage_current_stable_all/usr/bin/*<br />
./configure [architecture] <br />
dpkg -i avrmanage_current-stable_all.deb <br />

If both commands show no red coloured text, then you can start working!<br />
Happy exploring! :)
