Particle[] stars = new Particle[50];
Particle[] grid = new Particle[50];
Particle[] rays = new Particle[50];
Particle[] rings = new Particle[50];
void setup()
{
	size(600,600);
	for(int i = 0; i < stars.length; i++)
	{
	   stars[i] = new NormalParticle();
	}
	stars[48] = new JumboParticle();
	stars[49] = new OddballParticle();
	for(int i = 0; i < grid.length; i++)
	{
	   grid[i] = new NormalParticleGrid();
	}
	grid[48] = new JumboParticleGrid();
	grid[49] = new OddballParticle();
	for(int i = 0; i < rays.length; i++)
	{
	   rays[i] = new NormalParticleRays();
	}
	rays[48] = new JumboParticleRays();
	rays[49] = new OddballParticle();
	for(int i = 0; i < rings.length; i++)
	{
	   rings[i] = new NormalParticleRings();
	}
	rings[48] = new JumboParticleRings();
	rings[49] = new OddballParticle();
}
int counter = 0;
void draw()
{
	background(0);
	if()
	{
	}
	else if()
	{
	}
	else if()
	{
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
	int angle = (int)(Math.random()*2*Math.PI);
	public void move()
	{
	   X = X + Math.cos(angle)*Speed;
	   Y = Y + Math.sin(angle)*Speed;
	}
}
class NormalParticleRings extends NormalParticle  //speeds are integers
{
	int speed = (int)(Math.random()*10);
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
	double X, Y, angle;
	OddballParticle()
	{
	   X = 300;
	   Y = 300;
	   angle = 0;
	}
	public void move()  //circular motion, radius of 50
	{
	   X = Math.cos(angle)*50;
	   Y = Math.sin(angle)*50;
	   angle = angle + 0.1;
	}
	public void show()  //rect instead of ellipse
	{
	   fill(myColor);
	   rect((float)X,(float)Y,20,20);
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
class JumboParticleGrid extends NormalParticleGrid  //larger NormalParticleGrid
{
	public void show()
	{
	   fill(myColor);
	   ellipse(x,y,30,30)
	}
}
class JumboParticleRays extends NormalParticleRays  //larger NormalParticleRays
{
	public void show()
	{
	   fill(myColor);
	   ellipse((float)X,(float)Y,30,30);
	}
}
class JumboParticleRings extends NormalParticleRings  //larger NormalParticleRings
{
	public void show()
	{
	   fill(myColor);
	   ellipse((float)X,(float)Y,30,30);
	}
}

