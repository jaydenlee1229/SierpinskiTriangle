public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(mouseX, mouseY, 255);
	sierpinski(0, 600, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}