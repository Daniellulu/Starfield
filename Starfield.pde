Particle [] no = new Particle [700];
void setup()
{
	background(0);
size(1000,1000);
for(int i = 0; i< no.length; i++){
    no[i] = new Particle();
    no[0] = new OddballParticle();
}
}
void draw()
{
// background(0);
  for(int i = 0; i< no.length; i++){
    no[i].show();
   no[i].move();
  }
}
class Particle
{
	int col1,col2,col3;
  double myX, myY,myAngle,mySpeed;
  
    Particle(){
    myX = myY = 500;
     myAngle = (double) (Math.random() * (double)(2 * PI));
    mySpeed = (double) (Math.random() * 10);
    col1 = (int)(Math.random() * 255);
   col2 = (int)(Math.random() * 255);
   col3 = (int)(Math.random() * 255);
  }
  void move(){
   
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(col1,col2,col3);
    noStroke();
    ellipse((float)myX,(float)myY,10,10);
  }
}

class OddballParticle extends Particle
{
  int size;
  OddballParticle(){
    size = 100;
        myX = myY = 450;
     myAngle = (double) (Math.random() * (double)( 2*PI));
    mySpeed = (double) (Math.random() * 10);
  }
	void show(){
  noStroke();
  background(0);
  rect((float)myX,(float)myY,size,size,255);
}
  void move(){
    myX += Math.cos(myAngle)*mySpeed;
    myY += Math.sin(myAngle)*mySpeed;
       
       
     
     if(myX >= 1000 || myY >= 1000 || myX <=0 || myY <= 0){
       myX = myY = 500;
       myAngle = (double) (Math.random() * (double)( 2*PI));
       mySpeed = (double) (Math.random() * 10);
       size = 100;
    }
    
  }
}
