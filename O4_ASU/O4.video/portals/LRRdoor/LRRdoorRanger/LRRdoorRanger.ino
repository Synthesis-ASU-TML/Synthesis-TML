
/* srf 05 ultrasonic ranger reader
use mode2 where same pin is used for trigger and reading echo
need 3 lines 5V, ground and control/read
connect mode terminal to ground

*/

int srf05 = 5;    //select sensor control/read pin
int inches = 0;
int tune = 150;    // calibration value
int reading = 0;
int i = 0;
 int distance = 0;
 
void setup() {                
 Serial.begin(115200);
  pinMode(srf05, OUTPUT);     
}

/* calibrate code by changing the value of tune
decrease tune to raise inches reading
increase tune to lower inches reading
use 3 point calibration; near, middle and far
say 12", 72" and 144"( 1', 6', 12')
*/
int srf(){
  inches = 0;
  digitalWrite(srf05, HIGH);
  delayMicroseconds(10);
  digitalWrite(srf05, LOW);
  pinMode(srf05, INPUT);
  delayMicroseconds(100);
  while(digitalRead(srf05) == LOW)  delayMicroseconds(10);
  while(digitalRead(srf05) == HIGH){
    
    delayMicroseconds(tune); //adjust this value to calibrate code with known distance
    inches++;
  }
  pinMode(srf05, OUTPUT);
  digitalWrite(srf05, LOW);
  return inches;
}

void loop() {
  reading = 0;
 for(int i=0; i<4; i++){ 
  reading += srf();
  //Serial.print("Distance is: ");
               delay(300);    // measure every second
}
distance = reading/4;
    Serial.println(distance);

}
