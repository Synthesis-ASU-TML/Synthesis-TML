
// This code is to be used with an Arduino that has been programed with the SimpleMessageSystem_example1
// Button interface based on code by REAS <http://reas.com>


import processing.serial.*;

 // The serial port
Serial port;                        

// Text display variables
PFont font;
String textDisplayed = "";
String explanation = "Click the rectangles!";

// Serial variables
String serialString = "";

// Buttons variables
RectButton rect1, rect2,rect3;
boolean locked = false;
boolean mouseup = true;

//Output13 variables
boolean output13 = false;

void setup() {
  
  // GRAPHICS SETUP
  size(300, 200);
  
    // Load the font. Fonts are located within the 
  // main Processing directory/folder and they
  // must be placed within the data directory
  // of your sketch for them to load
  font = loadFont("Univers45.vlw.gz");
  textFont(font, 22); 
   
  // SERIAL SETUP
  // Print a list of the serial ports, for debugging purposes:
  println("Serial ports");
  println(Serial.list());

  // On my computer, the Arduino is the first port
  print("Selected port: ");
  println(Serial.list()[0]);
  port = new Serial(this, Serial.list()[0], 9600);

  //BUTTONS SETUP
   // Define and create rectangle button
  int x = 198;
  int y = 100; 
  int size = 50;
  color buttoncolor = color(153, 102, 102);
  color highlight = color(102, 51, 51); 
  rect1 = new RectButton(x, y, size, buttoncolor, highlight);
  
  // Define and create rectangle button
  x = 132;
  y = 100; 
  size = 50;
  buttoncolor = color(153, 153, 153);
  highlight = color(102, 102, 102); 
  rect2 = new RectButton(x, y, size, buttoncolor, highlight);

// Define and create rectangle button
  x = 66;
  y = 100; 
  size = 50;
  buttoncolor = color(153, 200, 200);
  highlight = color(102, 102, 102); 
  rect3 = new RectButton(x, y, size, buttoncolor, highlight);

}

void draw() {
  
  
  background(176);
  
  
  // BUTTONS
   stroke(255);
  rect1.update();
    rect2.update();
    rect3.update();
  rect1.display();
  rect2.display();
  rect3.display();
  
  
  // GET SERIAL DATA
  while (port.available() > 0) {
    serialInput();   
  }
  
  
fill(255, 255, 255);

text(textDisplayed, 15, 60); 
text(explanation, 15, 30);
  
  
}

void getAnalogs() {
  
  port.write("r a"); 
  port.write(13); 
  
}

void getDigitals() {
  
  port.write("r d"); 
  port.write(13); 
  
}

void setOutput13() {
  
  port.write("w 13 "); // NOTE THE SPACE TRAILING THE 13
  
  if(output13==true) {
    port.write('0');  //NOTE THAT WE ARE SENDING A STRING AND NOT AN INTEGER
    output13=false;
    
  } else {
    
    port.write('1');  //NOTE THAT WE ARE SENDING A STRING AND NOT AN INTEGER
    output13=true;
  }
  
  port.write(13); 
  
  textDisplayed = "";
  
}

void serialInput() {
  serialString = port.readStringUntil(13);
  if (serialString != null) {
      //println(serialString);
      textDisplayed = serialString.substring(0,serialString.length());
    }
  //processByte((char)port.read());
}

//----------------------------------------------------
//----------------------------------------------------
//----------------------------------------------------



void mousePressed() {
  
  if(rect1.pressed()) {
      explanation = "Analog inputs";
      getAnalogs();
    } else if(rect2.pressed()) {
      explanation = "Digital inputs";
      getDigitals();
    } else if(rect3.pressed()) {
      explanation = "Switching output 13 on/off";
      setOutput13();
    }
  
}



////////////////////
/// BUTTON CLASS ///
////////////////////

class Button
{
  int x, y;
  int size;
  color basecolor, highlightcolor;
  color currentcolor;
  boolean over = false;
  boolean pressed = false;   
  
  void update() 
  {
    if(over()) {
      currentcolor = highlightcolor;
    } else {
      currentcolor = basecolor;
    }
  }
  
  boolean pressed() 
  {
    if(over) {
      locked = true;
      return true;
    } else {
      locked = false;
      return false;
    }    
  }
  
  boolean over() 
  { 
    return true; 
  }
  
  void display() 
  { 
  
  }
}


class RectButton extends Button
{
  RectButton(int ix, int iy, int isize, color icolor, color ihighlight) 
  {
    x = ix;
    y = iy;
    size = isize;
    basecolor = icolor;
    highlightcolor = ihighlight;
    currentcolor = basecolor;
  }
  
  boolean over() 
  {
    if( overRect(x, y, size, size) ) {
      over = true;
      return true;
    } else {
      over = false;
      return false;
    }
  }
  
  void display() 
  {
    stroke(255);
    fill(currentcolor);
    rect(x, y, size, size);
  }
}

boolean overRect(int x, int y, int width, int height) 
{
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}



