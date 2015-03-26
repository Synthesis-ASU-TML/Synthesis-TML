// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!

#include <AFMotor.h>

// Connect a stepper motor with 48 steps per revolution (7.5 degree)
// to motor port #2 (M3 and M4)m
AF_Stepper motor(200, 2); //was 48, 2

byte incomingByte;
void setup() {
  Serial.begin(9600);           // set up Serial library at 9600 bps
  Serial.println("Stepper test!");
  motor.setSpeed(10);  // 10 rpm   
}

void loop() {
    // see if there's incoming serial data:
  if (Serial.available() > 0) {
    // read the oldest byte in the serial buffer:
    incomingByte = Serial.read();
    // if it's a capital H (ASCII 72), turn on the LED:
    switch (incomingByte) {
      case 'F':
        stepForward();
        break;
      case 'B':
        stepBackward();
        break;
    }
  }
}

int stepForward(){
  Serial.println("Interleave forward");
  motor.step(100, FORWARD, INTERLEAVE); 
}

int stepBackward(){
  Serial.println("Interleave backward");
  motor.step(100, BACKWARD, INTERLEAVE);
}
