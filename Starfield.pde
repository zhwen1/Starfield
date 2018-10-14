Particle [] bobbu;
void setup()
{
  size(500, 500);
  bobbu = new Particle[300];
  for (int i = 0; i<bobbu.length; i++)
  {
    bobbu[i] = new NormalParticle();
  }
  bobbu[0] = new OddballParticle();
  bobbu[1] = new JumboParticle();
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

class NormalParticle implements Particle
{
  int myColor;
  double myX, myY, mySpeed, myAngle;
  NormalParticle()
  {
    myColor = color(124, 170, 244);
    myX = 250;
    myY = 250;
    mySpeed = Math.random()*11;
    myAngle = Math.random()*(2*Math.PI);
  }
  public void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 7, 7);
  }
  public void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  OddballParticle()
  {
    myX = 250;
    myY = 250;
    mySpeed = Math.random()+1;
    myAngle = Math.random()*(2*Math.PI);
  }
  public void show()
  {
    fill(255, 0, 255);
    rect((float)myX, (float)myY, 10, 10);
  }
  public void move()
  {
    myX = myX + Math.random()+0.5;

    myY = myY + Math.random()+0.5;
  }
}

class JumboParticle extends NormalParticle
{
  public void show()
  {
    ellipse((float)myX, (float)myY, 20, 20);
  }
}
