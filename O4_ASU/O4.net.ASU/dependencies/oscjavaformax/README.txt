Objects for Max/MSP for all-round OSC support, made in Java. Supports sending and receiving Open Sound Control with built-in time tagging and scheduling. Also includes browsing for existing OSC devices on the network and registering a new device.

OscBrowse and OscService require Mac OS 10.5 or higher, or Windows XP or higher.

Note for Windows users: to use the Browse and Service features you need to install the Apple Bonjour services for Windows, that you can download here: http://support.apple.com/kb/DL999

For more info and support, monitor https://sourceforge.net/projects/oscjavaformax

Made by Mattijs Kneppers (www.arttech.nl).


Changed in version 1.8:
- added support for Java 1.5 (previously only 1.6 or higher)


Changed in version 1.7:
- OscBrowse: fixed reporting network interface-bound IP address


Changed in version 1.6:

- OscReceive now supports specifying the local network interface it is listening on
- OscService now supports specifying the local network interface it is registered to
- Added GetLocalAddresses
- fixed a few bugs


Changed in version 1.5:

- OscReceive now deals with the OSC type RGBA color, which is output as 4 ints


Changed in version 1.4:

- OscReceive now outputs the difference between the time tag and the actual time of reception


Changed in version 1.3:

- fix for bug when receiving lists


Changed in version 1.2:

- added usetimetag attribute to OscSend


