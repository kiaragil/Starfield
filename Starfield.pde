Particle[] mjolnir;

void setup(){
	size(600,600);
	mjolnir = new Particle[100];
	for(int i=0; i<mjolnir.length; i++)
	{
		mjolnir[i] = new NormalParticle();
		mjolnir[5] = new JumboParticle();
		mjolnir[6] = new OddballParticle();
	}
}

void draw(){
	fill(0,0,0,60);
	rect(0,0,600,600);
	for(int j=0; j<mjolnir.length; j++){
		mjolnir[j].move();
		mjolnir[j].show();
	}
}

class NormalParticle implements Particle{
	int rgb;
	double x,y,speed,angle, dTheta, dSpeed;	
	NormalParticle(){	
		x = 300;
		y = 300;
		rgb = color ((int)(Math.random()*255+1),(int)(Math.random()*255+1),0);
		dTheta = Math.random()*PI*70;
		dSpeed = Math.random()*1+1;
	}

	public void move(){
		x = x+Math.cos(dTheta)*dSpeed;
		y = y+Math.sin(dTheta)*dSpeed;
		
		if (x > 600 || x < 0){
			x = 300;
			y = 300;
		}

		if (y > 600 || y < 0){
			x = 300;
			y = 300;
		}
	}

	public void show(){
		noStroke();
		fill(rgb);
		ellipse((float)x,(float)y,4,4);
	}

}
interface Particle{

	public void move();
	public void show();
}

class OddballParticle implements Particle{
	double dX, dY, speedX, speedY;
	OddballParticle() {
		dX = 300;
		dY = 300;
		speedX = Math.random()*11 - 5;
		speedY = Math.random()*11 - 5;
	}
	public void move() {
		speedX = Math.random()*11 - 5;
		speedY = Math.random()*11 - 5;
		if(dX <= 0 || dX >= 600 || dY <= 0 || dY >= 600) {
			dX = 300;
			dY =300;
		}
		else {
			dX = dX + speedX;
			dY = dY + speedY;
		}
	}
	public void show() {
		fill(0, (int)(Math.random()*255+1), (int)(Math.random()*255+1));
		ellipse((float)dX, (float)dY, 15, 15);
	}
}

class JumboParticle extends NormalParticle{

	JumboParticle(){

	}
	public void show()
	{
		noStroke();
		fill (134,255,0);
		ellipse((float)x,(float)y,50,50);
	}
}

