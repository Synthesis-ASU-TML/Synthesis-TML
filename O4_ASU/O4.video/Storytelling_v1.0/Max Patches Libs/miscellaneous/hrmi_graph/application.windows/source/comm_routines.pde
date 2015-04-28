import processing.serial.*;

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


void InitSelectPortScreen() {
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


void CheckPortSelectScreenButtons()
{
  for (int i=0; i<numPorts; i++) {
    if (buttonArray[i].pressed()) {
      selectedPort = true;
      serialListIndex = i;
      break;
    }
  }
}


boolean CheckPortSelected() {
  return selectedPort;
}


void OpenSerial() {
  if (!serialOpen) {
    // Hack: Open the known device
    port = new Serial(this, Serial.list()[serialListIndex], BAUD_RATE);
  
    // Setup the serialEvent to be called when we receive complete response
    // packets from the HRMI device
    port.bufferUntil(CR);
  
    serialOpen = true;
  }
}


void CloseSerial() {
  if (serialOpen) {
    port.stop();
    serialOpen = false;
  }
}


void GetHrData(int numVals)
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


void SetAvgMode(boolean mode)
{
  port.write('S');
  if (mode)
    port.write('1');
  else
    port.write('0');
  port.write(CR);
}


boolean HaveResponse()
{
  return(validData);
}
  

// Catch the event from the serial interface.  This event seems to be
// called even when there is no receive data (perhaps for the transmitted
// data) so we make sure there is actually data to read before attempting
// to do any processing.
void serialEvent(Serial port) {
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

