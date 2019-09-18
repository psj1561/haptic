void setup() 
{
	size(640, 360);
}

void draw() 
{
	background(102);
	pushMatrix();    //start to draw matrix code
  	translate(width*0.5, height*0.5); 
  	rotate(frameCount / 200.0); 
  	polygon(20, 60, 150, 4);  // Triangle   (X, Y, radius, n<< what shapes??)
	popMatrix();   //end draw matrix code
}


void polygon(float x, float y, float radius, int npoints)
{
	float angle = TWO_PI / npoints;
	beginShape();
	for (float a = 0; a < TWO_PI; a += angle) 
	{
		float sx = x + cos(a) * radius;    //x length
		float sy = y + sin(a) * radius;   //y length
		vertex(sx, sy); // draw code
	}
	endShape(CLOSE);
}