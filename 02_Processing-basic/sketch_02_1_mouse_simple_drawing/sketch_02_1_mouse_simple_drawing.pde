void setup() {
  size(100, 100);
}

void draw() {
  background(255); 
  line(0, 0, mouseX, mouseY);  //(start X, start Y, end X, end Y)
}

void mousePressed() {
  save("line.jpg");    // if mouse is pressed save line at "line.jpg"
  println("saved...");
}