//your code here
Particle[] bob = new Particle[20]
void setup()
{
	size (500,500);
	background (0);
	for (int i = 0; i <bob.length; i++)
	{
		bob[i] = new NormalParticle()
	}
	bob[0] = new OddballParticle();

	bob[1] = new JumboParticle();

}
void draw()
{
	fill(0);
	rect(0,0,500,500);
	for (int i = 0; i < bob.length; i++)
	{
		bob[i].show();
		bob[i].move();
	}
}
class NormalParticle
float myX, myY, speed, angle;
{
	NormalParticle()
	{
		myX = 200
		myY = 200  
		speed = (float) (Math.random()*50);
		angle = (float) (Math.random()*2*PI)
	}
	
	void move()
	{

	}

	void show()
	{

	}
	//your code here
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements NormalParticle //uses an interface
{
	//your code here
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
}