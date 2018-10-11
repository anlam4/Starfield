Particle[] stars = new Particle[];
void setup()
{
	size(600,600);
}
void draw()
{
	//your code here
}
class NormalParticle implements Particle
{
	double X, Y, Angle, Speed;
	int myColor;
	NormalParticle()
	{
	   X = 300;
	   Y = 300;
	   myColor = color((int)(Math.random())*256,(int)(Math.random())*256,(int)(Math.random())*256);
	   Angle = Math.random()*2*Math.PI;
	   Speed = Math.random()*10;
	}
	public void move()
	{
	   X = X + Math.cos(Angle)*Speed;
	   Y = Y + Math.sin(Angle)*Speed;
	}
	public void show()
	{
	   fill(myColor);
	   ellipse((float)X,(float)Y,10,10);
	}
}
class NormalParticleGrid extends NormalParticle  //x and y are integers
{
	int x = 300;
	int y = 300;
	public void move()
	{
	   x = x + (int)(Math.cos(Angle)*Speed);
	   y = y + (int)(Math.sin(Angle)*Speed);
	}
	public void show()
	{
	   fill(myColor);
	   ellipse(x,y,10,10);
	}
}
class NormalParticleRays extends NormalParticle  //angles are integers
{
	int angle = (int)(Math.random()*2*Math.PI)
	public void move()
	{
	   X = X + Math.cos(angle)*Speed;
	   Y = Y + Math.sin(angle)*Speed;
	}
}
class NormalParticleRings extends NormalParticle  //speeds are integers
{
	int speed = (int)(Math.random()*10)
	public void move()
	{
	   X = X + Math.cos(Angle)*speed;
	   Y = Y + Math.sin(Angle)*speed;
	}
]
interface Particle
{
	public void move();  //NormalParticle and OddballParticle
	public void show();  //have these methods
}
class OddballParticle implements Particle
{
	double X,Y,angle,radius
	OddballParticle()
	{
	}
	public void move()  //circular motion
	{
	
	}
	public void show()  //rect instead of ellipse
	{
	   fill(myColor);
	   rect((float)X,(float)Y,20,20)
	}
}
class JumboParticle extends NormalParticle  //larger NormalParticle
{
	public void show()
	{
	   fill(myColor);
	   ellipse((float)X,(float)Y,30,30);
	}
}
class JumboParticleGrid extends NormalParticle
{
	public void show()
	{
	   fill(myColor);
	   ellipse(x,y,30,30)
	}
}

