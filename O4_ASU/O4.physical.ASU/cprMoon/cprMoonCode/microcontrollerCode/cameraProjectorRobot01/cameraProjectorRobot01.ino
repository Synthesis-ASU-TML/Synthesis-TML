// MultiStepper
// -*- mode: C++ -*-
//
// Control both Stepper motors at the same time with different speeds
// and accelerations. 
// Public domain!

//This code is used with the Poolu DRV8825 stepper motor driver carrier board (one per motor)

#include <AccelStepper.h>

// Define some steppers and the pins they will use
AccelStepper stepper1(AccelStepper::DRIVER, 3, 2);  //step pin 3, direction pin 2
AccelStepper stepper2(AccelStepper::DRIVER, 9, 8);  //step pin 9, direction pin 8

//step mode pin assignments
#define motor1M0Pin  6
#define motor1M1Pin  5
#define motor1M2Pin  4
#define motor2M0Pin  12
#define motor2M1Pin  11
#define motor2M2Pin  10

//enable pin assignments
#define motor1EnablePin 7   //internally pulled LOW to enable, Set HIGH to disable output
#define motor2EnablePin 14

byte incomingByte; //identifying header byte 'A' (stepper1) or 'B' (stepper2)

//define pins for interrupts 
int panLimit1Pin = 15;
int panLimit2Pin = 16;
int panZeroPin = 17;
int tiltLimit1Pin = 18;
int tiltLimit2Pin = 19;
int tiltZeroPin = 20;

//create variables for interrupt flags
volatile int panLimit1State = LOW; 
volatile int panLimit2State = LOW;
volatile int panZeroState = LOW;
volatile int tiltLimit1State = LOW;
volatile int tiltLimit2State = LOW;
volatile int tiltZeroState = LOW;

void setup()  
{
  //pin configuration
pinMode (motor1M0Pin, OUTPUT);
pinMode (motor1M1Pin, OUTPUT);
pinMode (motor1M2Pin, OUTPUT);
pinMode (motor2M0Pin, OUTPUT);
pinMode (motor2M1Pin, OUTPUT);
pinMode (motor2M2Pin, OUTPUT);
pinMode (motor1EnablePin, OUTPUT);
pinMode (motor2EnablePin, OUTPUT);

//enable pin initialization
digitalWrite (motor1EnablePin, LOW);  //Set HIGH to disable output
digitalWrite (motor2EnablePin, LOW); 

//step mode configuration
digitalWrite (motor1M0Pin, HIGH); //M0 HIGH, M1 HIGH, M2 LOW = 1/8 step mode
digitalWrite (motor1M1Pin, HIGH);  //can be changed to test other step modes
digitalWrite (motor1M2Pin, LOW);
digitalWrite (motor2M0Pin, HIGH); //M0 HIGH, M1 HIGH, M2 LOW = 1/8 step mode
digitalWrite (motor2M1Pin, HIGH);  //can be changed to test other step modes
digitalWrite (motor2M2Pin, LOW);
  
  attachInterrupt(panLimit1Pin, panL1, FALLING);
  attachInterrupt(panLimit2Pin, panL2, FALLING);
  attachInterrupt(panZeroPin, panZero, FALLING);
  attachInterrupt(tiltLimit1Pin, tiltL1, FALLING);
  attachInterrupt(tiltLimit2Pin, tiltL2, FALLING);
  attachInterrupt(tiltZeroPin, tiltZero, FALLING);
  
  Serial.begin(115200);           // set up Serial library at 9600 bps
  Serial.println("Stepper test!");
  
  stepper1.setMaxSpeed(5000.0); //800 with 24V
  stepper1.setAcceleration(2000.0); //500 with 24V
    
  stepper2.setMaxSpeed(5000.0);
  stepper2.setAcceleration(2000.0);
    //stepper2.moveTo(1000000);
  
} //end of setup


void loop()
{
      if (Serial.available() > 1) 
      {
        incomingByte = Serial.read();  // read the oldest byte in the serial buffer:
        switch (incomingByte) 
        {
          case 'A':
          {
            int targetPos1 = Serial.parseInt();
            stepper1.moveTo(targetPos1);
            break;
          }  //end of case A
          break;
        case 'B':
        {
          int targetPos2 = Serial.parseInt();
          stepper2.moveTo(targetPos2);
          break;
        }  //end of case B
      }  //end of switch case conditional
    }  //end of if conditional 
  
  
    if (stepper1.distanceToGo() == 0) 
    {
        digitalWrite (motor1EnablePin, HIGH); // !!!Switch back to HIGH after current setting!!! disable motor driver output: stop rotation and turn off holding torque
        stepper1.run();
    }  //end of if conditional
        else 
        {
          digitalWrite (motor1EnablePin, LOW); //enable motor driver output
          stepper1.run();  
        }  //end of else condition
    
    if (stepper2.distanceToGo() == 0) 
    {
        digitalWrite (motor2EnablePin, HIGH); // disable motor driver output: stop rotation and turn off holding torque
        stepper2.run();
    }  //end of if conditional
        else 
        {
          digitalWrite (motor2EnablePin, LOW); //enable motor driver output
          stepper2.run();
        }  //end of else condition
        
        
        
}//end of loop

//attach setup interrupts 

//pan limit1 interrupt
//pan limit2 interrupt
//pan zero position interrupt
//tilt limit1 interrupt
//tilt limit2 interrupt
//tilt zero position interrupt

//calibrate pan position
//move toward pan limit1
//if zero interrupt position is reached first, stop, set current position to zero, goto tilt position calibration.
//if pan limit1 is reached first, set current position to limit1 position (predetermined), move to zero position.
//at zero interrupt, stop, set current position to zero, goto tilt position calibration.

//calibrate tilt position
//move toward tilt limit1
//if zero interrupt position is reached first, stop, set current position to zero.
//if tilt limit1 is reached first, set current position to limit1 position (predetermined), move to zero position.
//at zero interrupt, stop, set current position to zero.

//detach setup interrupts

//attach interrupts for main loop (same parameters but with different ISR's)

void panL1()
{
  panLimit1State = HIGH;
}  //end of panL1

void panL2()
{
  panLimit2State = HIGH;
}  //end of panL2

void panZero()
{
  panZeroState = HIGH;
}  //end of panZero

void tiltL1()
{
  tiltLimit1State = HIGH;
}  //end of panL1

void tiltL2()
{
  tiltLimit2State = HIGH;
}  //end of panL2

void tiltZero()
{
  tiltZeroState = HIGH;
}  //end of panZero

void panCalibration()
{
  while (panZeroState = LOW)
  {
  //stepper1.moveTo(24);
  }  //end while condition
}//end of panCalibration function
