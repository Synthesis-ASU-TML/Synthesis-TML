import processing.core.*; 
import processing.xml.*; 

import processing.serial.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class hrmi_graph extends PApplet {


/** 
 * Simple Heart Rate Display with graph
 * by Dan Julio. 
 * 
 * Send a Get Heartrate command to the HRMI device and
 * then display the received heartrate along with
 * status flags and a dynamic graph.
 *
 * The HRMI device must be configured for serial 
 * operation with a baud rate of 9,600 baud (default
 * with no jumpers).
 *
 */
 



/*
 * Constants
 */
int SCREEN_W = 550;
int SCREEN_H = 320;
int NUM_HR_POINTS = 60;     // number of previous HR values in graph
int NUM_REQ_HR_VALS = 16;   // number of HR values to get per request
int SAMPLE_PERIOD = 1000;   // number of milliseconds between samples
int WAIT_PERIOD = 150;      // number of milliseconds to wait for a response
int STATE_DIS = 0;
int STATE_HOLD = 1;
int STATE_AVG = 2;
int STATE_RAW = 3;

/*
 * GUI related variables
 */
int windowColor = color(25, 25, 100);
int itemBaseColor = color(35, 35, 135);
int textColor = color(225);
int activeButtonColor = color(35, 35, 250);
int graphColor = color(225);
PFont fontA;
Button b1, b2, b3, b4;
Label lw, lhr, lstat;
HrDisplay hrInfo;
StatusDisplay statInfo;

/*
 * Control variables
 */
int curScreen = 0;
int curInitState = 0;
int curState;
boolean checkForResponse;
boolean firstSample = true;
int curHrVal;
int curFlags;
int curSampleCount;
int prevSampleCount;


public void setup() {
  // Initialize the GUI
  InitGui();
  
  curState = STATE_DIS;
  checkForResponse = false;
  
}

public void draw() {
  if (curInitState == 0) {
    InitSelectPortScreen();
    curInitState = 1;
  } else if (curInitState == 1) {
    if (CheckPortSelected()) {
      curInitState = 2;
    }
  } else if (curInitState == 2) {
    InitMainScreen();
    curInitState = 3;
  } else {  
    delay(SAMPLE_PERIOD - WAIT_PERIOD);
  
    // Check if we should send a command
    if ((curState == STATE_AVG) || (curState == STATE_RAW)) {
      GetHrData(NUM_REQ_HR_VALS);
      checkForResponse = true;
    }
  
    delay(WAIT_PERIOD);
  
    // Check if we should check for and process a response
    if (((curState == STATE_AVG) || (curState == STATE_RAW)) && checkForResponse) {        
      UpdateHrInfo(HaveResponse());
      checkForResponse = false;
    }
  }
}


public void InitGui()
{
  // Create the main window
  size(SCREEN_W, SCREEN_H);
  fill(windowColor);
  rect(0, 0, SCREEN_W, SCREEN_H);
  
  // Create a font to use
  fontA = loadFont("CourierNew36.vlw");
}

public void InitMainScreen()
{
  curScreen = 1;
  
  // Reinitialize the window
  fill(windowColor);
  rect(0, 0, SCREEN_W, SCREEN_H);
  
  // Create the main window labels
  lw = new Label(150, 1, "Heartrate Monitor Interface");
  lw.configLabel(fontA, 14);
  lw.setBaseColor(windowColor);
  lw.setTextColor(textColor);
  lw.display();
  lhr = new Label(20, 20, "Heartrate");
  lhr.configLabel(fontA, 12);
  lhr.setBaseColor(windowColor);
  lhr.setTextColor(textColor);
  lhr.display();
  lstat = new Label(20, 160, "Status");
  lstat.configLabel(fontA, 12);
  lstat.setBaseColor(windowColor);
  lstat.setTextColor(textColor);
  lstat.display();

  // Create the heart rate display
  hrInfo = new HrDisplay(20, 40, 150, 100, fontA);
  hrInfo.setBaseColor(itemBaseColor);
  hrInfo.setTextColor(textColor);
  hrInfo.display();
  
  // Create the status display
  statInfo = new StatusDisplay(20, 180, 150, 100, fontA);
  statInfo.setBaseColor(itemBaseColor);
  statInfo.setTextColor(textColor);
  statInfo.display();
  
  // Create the graph
  graphLineColor = graphColor;
  graphBgColor = itemBaseColor;
  graphAxisColor = textColor;
  CreateGraph(220, 40, 300, 240, NUM_HR_POINTS);
  ConfigGraph(0, 240, 20, 20, 20);
  
  // Create the buttons
  b1 = new Button(220, 290, 60, 20, "Disable", fontA, 12);
  b1.enable(true);
  b1.setBaseColor(itemBaseColor);
  b1.setActiveColor(activeButtonColor);
  b1.setTextColor(textColor);
  b1.display();
  
  b2 = new Button(300, 290, 60, 20, "Hold", fontA, 12);
  b2.setBaseColor(itemBaseColor);
  b2.setActiveColor(activeButtonColor);
  b2.setTextColor(textColor);
  b2.display();
  
  b3 = new Button(380, 290, 60, 20, "Average", fontA, 12);
  b3.setBaseColor(itemBaseColor);
  b3.setActiveColor(activeButtonColor);
  b3.setTextColor(textColor);
  b3.display();
  
  b4 = new Button(460, 290, 60, 20, "Raw", fontA, 12);
  b4.setBaseColor(itemBaseColor);
  b4.setActiveColor(activeButtonColor);
  b4.setTextColor(textColor);
  b4.display();
}


public void mousePressed()
{
  if (curScreen == 0) {
    CheckPortSelectScreenButtons();
  } else {
    CheckMainScreenButtons();
  }
}

  
public void CheckMainScreenButtons() {
  // Look for a hit in one of the buttons
  if (b1.pressed()) {
    if (curState != STATE_DIS) {
      curState = STATE_DIS;
      CloseSerial();
      b2.enable(false);
      b3.enable(false);
      b4.enable(false);
      hrInfo.enable(false);
      statInfo.enable(false);
      ResetGraph();
    }
  } else if (b2.pressed()) {
    if (curState != STATE_HOLD) {
      if (curState == STATE_DIS) {
        OpenSerial();
      }
      curState = STATE_HOLD;
      firstSample = true;
      b1.enable(false);
      b3.enable(false);
      b4.enable(false);
      hrInfo.enable(true);
      statInfo.enable(true);
    }
  } else if (b3.pressed()) {
    if (curState != STATE_AVG) {
      if (curState == STATE_DIS) {
        OpenSerial();
      }
      curState = STATE_AVG;
      SetAvgMode(true);
      b1.enable(false);
      b2.enable(false);
      b4.enable(false);
      hrInfo.enable(true);
      statInfo.enable(true);
    }
  } else if (b4.pressed()) {
    if (curState != STATE_RAW) {
      if (curState == STATE_DIS) {
        OpenSerial();
      }
      curState = STATE_RAW;
      SetAvgMode(false);
      b1.enable(false);
      b2.enable(false);
      b3.enable(false);
      hrInfo.enable(true);
      statInfo.enable(true);
    }
  }
}

public void UpdateHrInfo(boolean haveResponse)
{
  if (haveResponse) {
    curFlags = rspArgArray[0];
    curSampleCount = rspArgArray[1];
    curHrVal = rspArgArray[2];
  
    // Update the heartrate value with the most current value
    hrInfo.setVal(curHrVal);
    hrInfo.display();
  
    // Update the status display
    statInfo.setVal(curFlags);
    statInfo.display();
  
    // Update the graph
    if (firstSample) {
      firstSample = false;
    }
    else if (curSampleCount > prevSampleCount) {
      for (int i=(curSampleCount-prevSampleCount-1); i>=0; i--) {
        PushGraphData(rspArgArray[2+i]);
      }
      DrawGraph();
    } else if (curSampleCount < prevSampleCount) {
      for (int i=(curSampleCount+256-prevSampleCount-1); i>=0; i--) {
        PushGraphData(rspArgArray[2+i]);
      }
      DrawGraph();
    }
    prevSampleCount = curSampleCount;
  } else {
    // Indicate no response
    statInfo.setVal(0x80);
    statInfo.display();
  }
          
}



/*
 * Constants
 */
int CR = 13;
int MAX_REQ_HR = 32;
int BAUD_RATE = 9600;

/*
 * Communication related variables
 */
Serial port;
boolean selectedPort = false;
int serialListIndex;
boolean serialOpen = false;
byte[] rspCharArray = new byte[160];
int[] rspArgArray = new int[34];
int reqVals;
boolean validData = false;

/*
 * Port selection related variables
 */
int numPorts;
Button[] buttonArray;


public void InitSelectPortScreen() {
  int i;
  int maxCols = 2;
  int curRow, curCol;
  int x, y;
  int offsetx = 10;
  int offsety = 30;
  int bwidth = (SCREEN_W / maxCols) - (2 * maxCols);
  int bheight = 12;
  String portName;
  
  // Determine the number of ports we can display
  numPorts = Serial.list().length;
  int maxPorts = ((SCREEN_H - offsety) / (bheight + 2)) * maxCols;
  if (numPorts > maxPorts) {
    numPorts = maxPorts;
  }
  buttonArray = new Button[numPorts];
  
  // Label the selection window
  smooth();
  fill(textColor);
  textFont(fontA, 14);
  text("Select the serial port to use:", 10, 10);
  
  // Create and display a set of buttons for each device entry
  for (i=0; i < numPorts; i++) {
    portName = Serial.list()[i];
    curCol = i / (maxPorts / maxCols);
    curRow = i % (maxPorts / maxCols);
    x = offsetx + (curCol * (bwidth + 2));
    y = offsety + (curRow * (bheight + 2));
    buttonArray[i] = new Button(x, y, bwidth, bheight, portName, fontA, bheight);
    buttonArray[i].setBaseColor(itemBaseColor);
    buttonArray[i].setActiveColor(activeButtonColor);
    buttonArray[i].setTextColor(textColor);
    buttonArray[i].display();
  }
}


public void CheckPortSelectScreenButtons()
{
  for (int i=0; i<numPorts; i++) {
    if (buttonArray[i].pressed()) {
      selectedPort = true;
      serialListIndex = i;
      break;
    }
  }
}


public boolean CheckPortSelected() {
  return selectedPort;
}


public void OpenSerial() {
  if (!serialOpen) {
    // Hack: Open the known device
    port = new Serial(this, Serial.list()[serialListIndex], BAUD_RATE);
  
    // Setup the serialEvent to be called when we receive complete response
    // packets from the HRMI device
    port.bufferUntil(CR);
  
    serialOpen = true;
  }
}


public void CloseSerial() {
  if (serialOpen) {
    port.stop();
    serialOpen = false;
  }
}


public void GetHrData(int numVals)
{
  if (numVals > MAX_REQ_HR)
    reqVals = MAX_REQ_HR;
  else
    reqVals = numVals;
    
  validData = false;
  port.write('G');
  port.write(str(reqVals));
  port.write(CR);
}


public void SetAvgMode(boolean mode)
{
  port.write('S');
  if (mode)
    port.write('1');
  else
    port.write('0');
  port.write(CR);
}


public boolean HaveResponse()
{
  return(validData);
}
  

// Catch the event from the serial interface.  This event seems to be
// called even when there is no receive data (perhaps for the transmitted
// data) so we make sure there is actually data to read before attempting
// to do any processing.
public void serialEvent(Serial port) {
      if (port.readBytesUntil(CR, rspCharArray) != 0) {
        // Read bytes until we get to the end of the packet converting
        // each ASCII digit into a number.  We make use of the space
        // character between sets of digits to delimit numbers.
        //    Argument 0: Status Flags
        //    Argument 1: Second Count
        //    Argument 2: Heartrate
        //
        int ArgIndex = 0;
        int CharIndex = 0;
        for (int i=0; i<reqVals+2; i++) rspArgArray[i] = 0;
        while (rspCharArray[CharIndex] != CR) {
          if (rspCharArray[CharIndex] != ((byte) ' ')) {
            rspArgArray[ArgIndex] = (rspArgArray[ArgIndex]*10) + (rspCharArray[CharIndex] - ((byte) '0'));
          } else {
            ArgIndex++;
          }
          CharIndex++;
        }
        validData = true;
      }
}


int graphX, graphY;
int graphW, graphH;
int graphPoints = 1;
int[] graphData = new int[1];
int[] graphPrevData = new int[1];
int graphMinY, graphMaxY;
int graphTickX, graphIncX, graphTickY;
int graphLineColor = color(250);
int graphBgColor = color(150);
int graphAxisColor = color(200);
boolean graphDrawn = false;

int numValidGrEntries = 0;
int numPrevGrEntries = 0;


public void CreateGraph(int x, int y, int w, int h, int n)
{
  graphX = x;
  graphY = y;
  graphW = w;
  graphH = h;
  graphPoints = n;
  graphData = expand(graphData, n);
  graphPrevData = expand(graphPrevData, n);
}


public void ConfigGraph(int miny, int maxy, int tickx, int incx, int ticky)
{
  int i, xw, y;
  String l;
  
  graphMinY = miny;
  graphMaxY = maxy;
  graphTickX = tickx;
  graphIncX = incx;
  graphTickY = ticky;
  
  // Draw the graph area background
  fill(graphBgColor);
  rect(graphX-1, graphY-1, graphW+1, graphH+1);
  
  // Draw the X-axis
  stroke(graphAxisColor);
  noSmooth();
  line(graphX-1, graphY+graphH, graphX+graphW, graphY+graphH);
  
  // Draw the Y-axis
  line(graphX-1, graphY, graphX-1, graphY+graphH);
  
  // Label the Y-axis
  fill(graphAxisColor);
  i = 0;
  y = miny;
  smooth();
  while (y <= maxy) {
    l = str(y);
    textFont(fontA, 12);
    xw = (int) textWidth(l);
    text(l, graphX - xw - 1, graphY + graphH - y + 3);
    y += graphTickY;
    i++;
  }
}


public void PushGraphData(int val)
{
  int newVal = val;
  
  if (newVal > graphMaxY) newVal = graphMaxY;
  if (newVal < graphMinY) newVal = graphMinY;
  
  if (numValidGrEntries < graphPoints) {
    graphData[numValidGrEntries] = newVal;
    ++numValidGrEntries;
  } else {
    for (int i=1; i<graphPoints; i++) {
      graphData[i - 1] = graphData[i];
    }
    graphData[graphPoints-1] = newVal;
  }
}


public void ResetGraph()
{
  // Erase previous graph
  if (graphDrawn) {
    stroke(graphBgColor);
    _drawGraphLine(graphPrevData, numPrevGrEntries);
  }
  graphDrawn = false;
  numValidGrEntries = 0;
  numPrevGrEntries = 0;
}


public void DrawGraph()
{
  // Erase previous graph
  if (graphDrawn) {
    stroke(graphBgColor);
    _drawGraphLine(graphPrevData, numPrevGrEntries);
  }
  
  // Draw new graph
  stroke(graphLineColor);
  _drawGraphLine(graphData, numValidGrEntries);
  
  // Setup to erase this line next time
  for (int i=0; i<graphPoints; i++) {
    graphPrevData[i] = graphData[i];
  }
  numPrevGrEntries = numValidGrEntries;
  graphDrawn = true;
}


public void _drawGraphLine(int[] gd, int n)
{
  if ((n == 0) || (n == 1)) return;
  
  int xinc = graphW / (graphPoints - 1);
  int xs, ys, xe, ye;
  
  noSmooth();
  xs = graphX + 1;
  ys = graphY + (graphH - 1) - gd[0];
  for (int i=1; i<n; i++) {
    xe = graphX + 1 + (i * xinc);
    ye = graphY + (graphH - 1) - gd[i];
    line(xs, ys, xe, ye);
    xs = xe;
    ys = ye;
  }
}

class Label
{
  int lx, ly;
  int lw, lh;
  int basecolor = color(150);
  int textcolor = color(200);
  String label;
  PFont font;
  int fontSize;
  boolean enabled = true;
  
  Label(int x, int y, String v)
  {
    lx = x;
    ly = y;
    label = v; 
  }
  
  public void configLabel(PFont f, int s)
  {
    font = f;
    fontSize = s;
    textFont(f, s);
    lw = (int) textWidth(label);
    lh = s;
  }
  
  public void positionLabel(int x, int y)
  {
    lx = x;
    ly = y;
  }
  
  public void enable(boolean e)
  {
    enabled = e;
    display();
  }
  
  public void setLabel(String v)
  {
    label = v;
    textFont(font, fontSize);
    lw = (int) textWidth(label);
  }
  
  public String getLabel()
  {
    return label;
  }
  
  public int getHeight()
  {
    return lh;
  }
  
  public int getWidth()
  {
    return lw;
  }
  
  public void setBaseColor(int c)
  {
    basecolor = c;
  }
  
  public void setTextColor(int c)
  {
    textcolor = c;
  }
  
  public void display()
  {
    if (enabled) {
      fill(textcolor);
      smooth();
      textFont(font, fontSize);
      text(label, lx, ly+fontSize);
    }
  }
}
  
  
class Button
{
  int x, y;
  int w, h;
  int basecolor = color(150);
  int activecolor = color(200);
  int textcolor = color(250);
  int currentcolor;
  boolean enabled = false;
  Label bl;
  
  Button(int ix, int iy, int iw, int ih, String l, PFont f, int fs) 
  {
    int lx, ly;
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    bl = new Label(0, 0, l);
    bl.configLabel(f, fs);
    lx = x + ((w - bl.getWidth())/2);
    ly = y + ((h - fs) / 2);
    bl.positionLabel(lx, ly);
    bl.setTextColor(textcolor);
    bl.setBaseColor(basecolor);
    currentcolor = basecolor;
  }
    
  public void enable(boolean e)
  {
    if (e != enabled) {
      enabled = e;
      if (enabled) {
        currentcolor = activecolor;
      } else {
        currentcolor = basecolor;
      }
      display();
    }
  }
  
  public void setBaseColor(int c)
  {
    basecolor = c;
    if (!enabled) {
      currentcolor = c;
    }
  }
  
  public void setActiveColor(int c)
  {
    activecolor = c;
    if (enabled) {
      currentcolor = c;
    }
  }
  
  public void setTextColor(int c)
  {
    textcolor = c;
    bl.setTextColor(c);
  }

  public boolean pressed() 
  {
    boolean newPressed = overRect();
    if (!enabled && newPressed) {
      enable(true);
    }
    return(newPressed);
  }

  public boolean overRect() 
  {
    if (mouseX >= x && mouseX <= x+w && 
      mouseY >= y && mouseY <= y+h) {
      return true;
    } 
    else {
      return false;
    }
  }
  
  public void display() 
  {
    stroke(255);
    fill(currentcolor);
    rect(x, y, w, h);
    bl.setBaseColor(currentcolor);
    bl.display();
  }

}



class HrDisplay
{
  int x, y;
  int w, h;
  int offsetx, offsety, texth;
  int basecolor = color(150);
  int textcolor = color(200);
  boolean enabled = false;
  int val = 0;
  Label l;
  
  HrDisplay(int ix, int iy, int iw, int ih, PFont f)
  {
    int lw;
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    l = new Label(0, 0, "0");
    texth = 2 * h / 3;
    l.configLabel(f, texth);
    lw = l.getWidth();
    offsetx = x + ((w - lw) / 2);
    offsety = y + 1;
    l.positionLabel(offsetx, offsety);
    l.setBaseColor(basecolor);
    l.setTextColor(textcolor);
  }
  
  public void enable(boolean e)
  {
    enabled = e;
    display();
  }
  
  public void setVal(int v)
  {
    int lw;
    
    val = v;
    l.setLabel(str(val));
    lw = l.getWidth();
    offsetx = x + ((w - lw) / 2);
    l.positionLabel(offsetx, offsety);
  }
  
  public void setBaseColor(int c)
  {
    basecolor = c;
    l.setBaseColor(c);
  }
  
  public void setTextColor(int c)
  {
    textcolor = c;
    l.setTextColor(c);
  }
  
  public void display()
  {
    stroke(basecolor);
    fill(basecolor);
    rect(x, y, w, h);
    if (enabled) {
      l.display();
    }
  }
}



class StatusDisplay
{
  int x, y;
  int w, h;
  int offsetx, offsety, texth;
  int basecolor = color(150);
  int textcolor = color(200);
  boolean enabled = false;
  int val = 0;
  Label l11;
  Label l12;
  Label l13;
  Label l21;
  Label l22;
  Label l31;
  Label l41;
  
  StatusDisplay(int ix, int iy, int iw, int ih, PFont f)
  {
    int spacing;
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    texth = h/8;
    spacing = texth + texth/2;
    offsetx = x + (texth / 2);
    offsety = y + (texth / 2);
    
    l11 = new Label(offsetx, offsety, "Algorithm: Averaged");
    l12 = new Label(offsetx, offsety, "Algorithm: Raw");
    l13 = new Label(offsetx, offsety, "No HRMI Response");
    l21 = new Label(offsetx, offsety + spacing, "No heartbeat");
    l22 = new Label(offsetx, offsety + spacing, "Heartbeat detected");
    l31 = new Label(offsetx, offsety + 2*spacing, "Acquiring series");
    l41 = new Label(offsetx, offsety + 3*spacing, "Too much bad data");
    
    l11.configLabel(f, texth);
    l12.configLabel(f, texth);
    l13.configLabel(f, texth);
    l21.configLabel(f, texth);
    l22.configLabel(f, texth);
    l31.configLabel(f, texth);
    l41.configLabel(f, texth);
    
    l11.setBaseColor(basecolor);
    l12.setBaseColor(basecolor);
    l13.setBaseColor(basecolor);
    l21.setBaseColor(basecolor);
    l22.setBaseColor(basecolor);
    l31.setBaseColor(basecolor);
    l41.setBaseColor(basecolor);
    
    l11.setTextColor(textcolor);
    l12.setTextColor(textcolor);
    l13.setTextColor(textcolor);
    l21.setTextColor(textcolor);
    l22.setTextColor(textcolor);
    l31.setTextColor(textcolor);
    l41.setTextColor(textcolor);
  }
  
  public void enable(boolean e)
  {
    enabled = e;
    display();
  }
  
  //
  //   v : Mask
  //       7: No response from HRMI
  //     6:4: Reserved
  //       3: Too much bad data
  //       2: Acquiring series
  //       1: Heartbeat detected
  //       0: Average / ~Raw
  public void setVal(int v)
  {
    val = v;
  }
  
  public void setBaseColor(int c)
  {
    basecolor = c;
    l11.setBaseColor(c);
    l12.setBaseColor(c);
    l13.setBaseColor(c);
    l21.setBaseColor(c);
    l22.setBaseColor(c);
    l31.setBaseColor(c);
    l41.setBaseColor(c);
  }
  
  public void setTextColor(int c)
  {
    textcolor = c;
    l11.setTextColor(c);
    l12.setTextColor(c);
    l13.setTextColor(c);
    l21.setTextColor(c);
    l22.setTextColor(c);
    l31.setTextColor(c);
    l41.setTextColor(c);
  }
  
  public void display()
  {
    int lw, lh;

    stroke(basecolor);
    fill(basecolor);
    rect(x, y, w, h);
    if (enabled) {
      if ((val & 0x80) == 0x80) {
        l11.enable(false);
        l12.enable(false);
        l13.enable(true);
      } else {
        if ((val & 0x01) == 0x01) {
          l12.enable(false);
          l13.enable(false);
          l11.enable(true);
        } else {
          l11.enable(false);
          l13.enable(false);
          l12.enable(true);
        }
      
        if ((val & 0x02) == 0x02) {
          l22.enable(false);
          l21.enable(true);
        } else {
          l21.enable(false);
          l22.enable(true);
        }
      
        l31.enable(((val & 0x04) == 0x04));
      
        l41.enable(((val & 0x08) == 0x08));
      }
    }
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#c0c0c0", "hrmi_graph" });
  }
}
