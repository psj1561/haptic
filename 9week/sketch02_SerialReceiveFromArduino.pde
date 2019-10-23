import processing.serial.*;
Serial myPort; 
float val1;

void setup() {
  
  size(800, 600);
  // List all the available serial ports
  printArray(Serial.list());
  
  // Open the port you are using at the rate you want:
  //myPort = new Serial(this, Serial.list()[0], 9600);
  myPort = new Serial(this, Serial.list()[Serial.list().length - 1], 9600);     //아두이노로부터 받은것을 myPort에 저장해준다.
  
  val1 = 0;
}


void draw() {
  background(255);  
  fill(0);   
  int lf = 10;    // Linefeed in ASCII

  String buf = String.format("%06d, %.0f", frameCount, val1);
  text(buf, 20,50);
  
  while (myPort.available() > 0)               // myPort의 값이 있으면 계속 반복하도록한다
  {
    String str1  = myPort.readStringUntil(lf);//myPort.readString();    //값이 계속 갱신되도록 새로 값을 받는다.
    
    if (str1 != null) 
    {
      val1 = float(str1);    //if문에서 str값이 null이아니면 val1에 float형으로 저장한다.
    }
  }
}
