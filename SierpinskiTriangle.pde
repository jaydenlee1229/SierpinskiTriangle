public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(mouseX, mouseY, 200);
	fill(100, 100, 255, 150);
	sierpinski(0, 0, 600);
	fill(255, 100, 100, 150);
	sierpinski2(0, 600, 600);
	//sierpinski3(0, 600, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10)
	{
		triangle(x, y, x + len/2, y + len, x + len, y);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y + len/2, len/2);
	}
}
public void sierpinski2(int x, int y, int len) 
{
	if(len <= 10)
	{
		rect(x, y, len, len);
	}
	else
	{
		sierpinski2(x, y, len/2);
		sierpinski2(x + len/2, y, len/2);
		sierpinski2(x + len/4, y - len/2, len/2);
	}
}
// public void sierpinski3(int x, int y, int len) 
// {
// 	if(len <= 10)
// 	{
// 		beginShape(x, y, x + len, y, x + len * 1.19, y - len * 0.9815, x + len * 1.381966, y, x + len * 2.38, y, x + len * 1.457, y + len * 0.374, x + len * 1.19, y + len * 0.698, x + len * 0.18488, y + len * 0.89, x + len * 0.922, y + len * 0.374);
// 		endShape();
// 	}
// 	else
// 	{
// 		sierpinski2(x, y, len/2);
// 		sierpinski2(x + len/2, y, len/2);
// 		sierpinski2(x + len/4, y - len/2, len/2);
// 	}
// }