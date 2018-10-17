//your code here
Particle[] bob = new Particle[30];
void setup()
{
	size (500,500);
	background (0);
	for (int i = 0; i <bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
	bob[0] = new OddballParticle();

	bob[1] = new JumboParticle();

}

void draw()
{
	fill(0,0,0);
	rect(0,0,500,500);
	for (int i = 0; i < bob.length; i++)
	{
		bob[i].show();
		bob[i].move();
	}
}

class NormalParticle implements Particle
{
	float myX, myY, dSpeed, dAngle;
	NormalParticle()
	{
		myX = 250;
		myY = 450 ;
		dSpeed = (float) (Math.random()*60);
		dAngle = (float) (Math.random()*2*PI);
	}
	
	void move()
	{
		myX += (Math.sin(dAngle)*PI);
		myY += (Math.cos(dAngle)*PI);
		dAngle = dAngle + 0.05;
	}

	void show()
	{
		fill (211,211,211);
		ellipse (myX, myY-200, 10,10);
	}

}

interface Particle
{
	public void show();
	public void move();
}

class OddballParticle implements Particle //uses an interface
{
	float myX, myY, dAngle;
	OddballParticle()
	{
		myX=width;
		myY=height;
	}
	public void move()
	{

	}
	public void show() 
	{
		fill(180,180,180) ; 
		rect(random(width),random(height),20,20);
	}
}
class JumboParticle extends NormalParticle //uses inheritance
{
	public void show()
	{
		fill(90,90,90);
		ellipse(250, 250, 50, 50);
	}
}