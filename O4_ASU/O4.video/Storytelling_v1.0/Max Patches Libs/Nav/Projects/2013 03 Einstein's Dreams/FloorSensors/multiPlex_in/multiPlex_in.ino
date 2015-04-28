// Constants
#define MULTIPLEXER_S0 5
#define MULTIPLEXER_S1 4
#define MULTIPLEXER_S2 3
#define MULTIPLEXER_S3 2

// Declare Multiplexer Access Variabless
int pinA, pinB, pinC, pinD, pinABCD;

short pinData[32];

void setup()
{
 Serial.begin(115200);
 
  analogReadResolution(16);
  
  // Set MULTIPLEXER_S0/1/2 Mode
  pinMode(MULTIPLEXER_S0, OUTPUT);
  pinMode(MULTIPLEXER_S1, OUTPUT);
  pinMode(MULTIPLEXER_S2, OUTPUT);
  pinMode(MULTIPLEXER_S3, OUTPUT);
  //pinMode(6, INPUT);
  
  // Initialise Multiplexer Access Variabless
  pinA = pinB = pinC = pinD = pinABCD = 0;
}


void readToMultiplexer(int pin)
{
    pinABCD = pin;
    pinA = pinABCD & 0x01;
    pinB = (pinABCD >> 1) & 0x01;
    pinC = (pinABCD >> 2) & 0x01;
    pinD = (pinABCD >> 3) & 0x01;

    // Poll Both Multiplexers Through the Same Pins

    digitalWrite(MULTIPLEXER_S0, pinD);
    digitalWrite(MULTIPLEXER_S1, pinC);
    digitalWrite(MULTIPLEXER_S2, pinB);
    digitalWrite(MULTIPLEXER_S3, pinA);

    pinData[pin] = analogRead(0);
    pinData[16 + pin] = analogRead(1);
//  digitalWrite(6, HIGH);
//     delay(100);
//  digitalWrite(6, LOW);
//     delay(100);
}  

// End of writeToMultiplexer()


void loop ()
{
 for(int i = 0; i < 16; i++)
 {
   readToMultiplexer(i);
 }
 delay(6);
 
 int header = 0xFF00FF00;
 Serial.write((uint8_t*)&header, sizeof(header));
 Serial.write ((uint8_t*)pinData, sizeof(pinData));

}
