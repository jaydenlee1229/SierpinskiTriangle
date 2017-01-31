int y = 0;
public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(0, 0, 255);
	noStroke();
	fill(255, 0, 0);
	rect(0, y, 600, 600);
	y += 10;
	if(y > 600)
	{
		y = -600;
	}
	stroke(1);
	fill(255);
	sierpinski1(0, 600, 600);
	sierpinski2(0, 0, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski1(int x, int y, int len) 
{
 	if(len <= 10)
 	{
 		beginShape();
		vertex(x, y);
		vertex(x + len, y);
		vertex(x + len * 1.19, y - len * 0.9815);
		vertex(x + len * 1.381966, y);
		vertex(x + len * 2.38, y);
		vertex(x + len * 1.457, y + len * 0.374);
		vertex(x + len * 2.118, y + len * 1.5388);
		vertex(x + len * 1.19, y + len * 0.698);
		vertex(x + len * 0.18488, y + len * 0.89);
		vertex(x + len * 0.922, y + len * 0.374);
 		endShape();
 	}
 	else
 	{
 		sierpinski1(x, y, len/2);
 		sierpinski1(x + len/2, y, len/2);
 		sierpinski1(x + len/4, y - len/2, len/2);
 	}
}
public void sierpinski2(int x, int y, int len) 
{
 	if(len <= 10)
 	{
 		beginShape();
		vertex(x, y);
		vertex(x + len, y);
		vertex(x + len * 1.19, y - len * 0.9815);
		vertex(x + len * 1.381966, y);
		vertex(x + len * 2.38, y);
		vertex(x + len * 1.457, y + len * 0.374);
		vertex(x + len * 2.118, y + len * 1.5388);
		vertex(x + len * 1.19, y + len * 0.698);
		vertex(x + len * 0.18488, y + len * 0.89);
		vertex(x + len * 0.922, y + len * 0.374);
 		endShape();
 	}
 	else
 	{
 	 	sierpinski2(x, y, len/2);
		sierpinski2(x + len/2, y, len/2);
		sierpinski2(x + len/4, y + len/2, len/2);
 	}
}