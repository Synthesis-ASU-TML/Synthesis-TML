// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!

#include <AFMotor.h>

// Connect a stepper motor with 48 steps per revolution (7.5 degree)
// to motor port #2 (M3 and M4)m
AF_Stepper motor(200, 2); //was 48, 2
//int stepCount = 1;

byte incomingByte;
void setup() {
  Serial.begin(9600);           // set up Serial library at 9600 bps
  Serial.println("Stepper test!");
 

  motor.setSpeed(10);  // 10 rpm   
}

void stepForward(int stepCount){
  Serial.println("Interleave forward");
  motor.step(stepCount, FORWARD, INTERLEAVE); 
}

void stepBackward(int stepCount){
  Serial.println("Interleave backward");
  motor.step(stepCount, BACKWARD, INTERLEAVE);
}

void loop() {
    // see if there's incoming serial data:
  if (Serial.available() > 1) {
    // read the oldest byte in the serial buffer:
    incomingByte = Serial.read();
    switch (incomingByte) {
      case 'F':{
      int sCount = Serial.parseInt();
      Serial.print("forward steps = ");
      Serial.println(sCount);
        stepForward(sCount);
    }
        break;
      case 'B':{
      int sCount = Serial.parseInt();
      Serial.print("backward steps = ");
      Serial.println(sCount);
        stepBackward(sCount);
        break;
      }
      //default:
      //motor.setSpeed(0);
    }
  }
}


