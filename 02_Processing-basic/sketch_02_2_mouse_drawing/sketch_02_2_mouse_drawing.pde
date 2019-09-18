
int saveCount;

void setup() {
  size(500, 500);
  saveCount = 0; //variable to filename like this>>> line_n
}

void draw() {
  background(204);
  line(0, 0, mouseX, mouseY);   
}

void mousePressed() {
  //String filename = "line_" + str(frameCount) + ".jpg"; 
  String filename = "line_" + str(saveCount) + ".jpg";  // set filename
  
  saveCount = saveCount + 1;
  save(filename);   //save line picture
  println("saved..." + filename);
}