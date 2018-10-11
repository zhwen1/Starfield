NormalParticle [] bobbu;
void setup()
{
	int z = color(255,255,255);
	size(500,500);
	bobbu = new NormalParticle[100];
	for (int i = 0; i<bobbu.length; i++)
	{
		bobbu[i] = new NormalParticle(250,250,z);
	}
	
	
}
void draw()
{
	background(0);
	for (int i = 0; i < bobbu.length; i++)
	{
		bobbu[i].show();
		bobbu[i].move();
	}
}
class NormalParticle
{
	int myColor;
	double myX,myY, mySpeed, myAngle;
	NormalParticle(double x, double y,int v)
		{
			myX = x;		
			myY = y;
			mySpeed = Math.random()*11;
			myAngle = Math.random()*(2*Math.PI); 
			myColor = v;

		}
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,5,5);

	}
	void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

