
  int sensorPosPin = A2; // input pin for MR sensor
  int rawPos;
  int t=0;
  int inByte = 0;

void setup() {
  // put your setup code here, to run once:

  Serial.begin(9600);
  pinMode(sensorPosPin, INPUT); // set MR sensor pin to be an input
}
void calculatePosition()
{
  rawPos = analogRead(sensorPosPin);  
}
void calculateVirtualPosition()
{
  t=t+1;
  rawPos = 512+512.0*sin(0.1 *t);
}
   
void loop() {
  // put your main code here, to run repeatedly:
  if (Serial.available() > 0) {
    // get incoming byte:
    1inByte = Serial.read();    
  }
    if(inByte=='1'){
        calculatePosition();        
      // turn the LED on (HIGH is the voltage level)
    }
    else if(inByte=='2'){
      calculateVirtualPosition(); 
    }
  Serial.println(rawPos);
  delay(10);
}



