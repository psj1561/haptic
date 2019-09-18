void setup() {
  size(300,300);
 
}

void draw() {
  
  background(255,255,0);  // background color
  fill(0);   
  
  //text("Hello Strings! " + str(frameCount),10,50);
  String buf = String.format("%06d", frameCount); // get frame from computer
  text(buf, 10,50); 
  
  
  fill(255/2);      
  text("Hello Strings!",10,100);
  fill(255/3);      
  text("Hello Strings!",10,150);
}