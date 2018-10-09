//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class NormalParticle implements Particle
{
	double X, Y, Angle, Speed;
	int x, y, angle, speed, myColor;
	boolean normal = false;
	boolean grid = false;
	boolean rays = false;
	boolean rings = false;
	NormalParticle()
	{
	   X
	   Y
	   myColor
	   Angle
	   Speed
	   normal = true;
	}
	NormalParticleGrid()  //x and y are integers
	{
	   x
	   y
	   myColor
	   Angle
	   Speed
	   grid = true;
	}
	NormalParticleRays()  //angles are integers
	{
	   X
	   Y
	   myColor
	   angle
	   Speed
	   rays = true;
	}
	NormalParticleRings()  //speeds are integers
	{
	   X
	   Y
	   myColor
	   Angle
	   speed
	   rings = true;
	}
	public void move()
	{
	}
	public void show()
	{
	}
}
interface Particle
{
	public void move();  //NormalParticle and OddballParticle
	public void show();  //have these methods
}
class OddballParticle implements Particle
{
	public void move()
	{
	}
	public void show()
	{
	}
}
class JumboParticle extends NormalParticle
{
	//just change size
}

