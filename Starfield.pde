//your code here
void setup()
{
	size(600,600)
	background(0);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	int rgb;
	double x,y,speed,angle;
	NormalParticle(){	
		x = 300;
		y = 300;
		speed = 3;
		rbg = color (212,0,0)
	}

	void move(){
	}

	void show(){
		noStroke();
		fill(rgb);
		ellipse((float)x,(float)y,10,10);
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

