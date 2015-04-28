WiFi Arcade Controller
======================

WiFi arcade controller is an open source project that includes designs for two [x-OSC](http://www.x-io.co.uk/x-osc/)-based arcade controllers, with [Java](http://www.java.com/en/) software to convert joystick and button events to emulated keystrokes.  

<div align="center">
<img src="https://raw.github.com/xioTechnologies/WiFi-Arcade-Controller/master/Arcade%20Controller/Arcade%20Controller.jpg" alt="GyroScratch Wiring" style="width: 600px;"/>
</div>
</br>

In addtion to the software, the repo includes designs for an <a href="https://github.com/xioTechnologies/WiFi-Arcade-Controller/blob/master/Arcade%20Controller/Arcade%20Controller.jpg" target="blank">arcade controller</a> and <a href="https://github.com/xioTechnologies/WiFi-Arcade-Controller/blob/master/Joystick/Joystick.jpg" target="blank">joystick</a>. The arcade controller uses an  <a href="https://www.sparkfun.com/products/9182" target="blank" > Arcade Joystick - Short Handle</a>, <a href="https://www.sparkfun.com/products/9179" target="blank" > green button</a>, <a href="https://www.sparkfun.com/products/9177" target="blank" > pink button</a>, <a href="https://www.sparkfun.com/products/9180" target="blank" > yellow button</a>, <a href="https://www.sparkfun.com/products/9336" target="blank" > red button</a>, <a href="https://www.sparkfun.com/products/9341" target="blank" > dark green button</a> and <a href="https://www.sparkfun.com/products/9339" target="blank" > black button</a> all available from <a href="https://www.sparkfun.com/" target="blank" >sparkfun</a>. The joystick controller is a very similar design using the <a href="https://www.sparkfun.com/products/9136" target="blank" > Arcade Joystick</a>, again from sparkfun. 

The Java software uses the <a href="http://www.illposed.com/software/javaosc.html" target="blank" >Illposed</a> OSC library to convert the x-OSC digital input messages to emulated key strokes. Different games will require different keystrokes so you will have to modify the Xosc.java file, replacing the VK_XX events accordingly; a complete list of key events is available <a href="http://download.java.net/jdk8/docs/api/java/awt/event/KeyEvent.html" target="blank" >here</a>. Also included with the software is a <a href="http://cycling74.com/products/max/" target="blank">Max/MSP</a> patch for viewing the x-OSC digital input states. Both the Java and the Max programs act as a good starting points for connecting x-OSC to their respective languages. Demo video available on [YouTube](http://www.youtube.com/watch?v=TtZ6ahxkCSI), see the [original post](http://www.x-io.co.uk/wifi-arcade-controller/) for more info.

</br>

=========

**x-OSC settings**

* inputs 1 - 10 to digital with pull-ups enabled

**Wiring**
<div align="center">
<img src="http://www.x-io.co.uk/wordpress/wp-content/uploads/2013/09/WiFi-Arcade-Controller-Wiring.png" alt="Arcade-Controller Wiring" style="width: 600px;"/>
</div>


**Instructions** 

Instructions for compiling and running the Java software are provided in the accompanying <a href="https://raw.github.com/xioTechnologies/WiFi-Arcade-Controller/master/Keyboard%20Emulation/Readme.txt" target="blank" > Readme</a> file.

