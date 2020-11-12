Particle[] particles;

void setup()
{
  size(800,700);
  background(0,0,0);
  frameRate(10);
  particles=new Particle[20];
  for(int i=0;i<particles.length;i++){
    particles[i]=new Particle();
  }
  particles[particles.length-1]= new Oddball();
}
void draw()
{
  background(0,0,0);
  for(int i=0;i<particles.length;i++){
   particles[i].show();
   particles[i].move();
  }
}
class Oddball extends Particle
{
void show()
{
  fill(0,0,255);
  ellipse(myX,myY,15,15);
  fill(255,255,255);
}
void move()
{
  if( (myX<0) || (myX>800) || 
      (myY<0) || (myY>700)){
        myX=800/2;
        myY=700/2;
      }
      else{
       myX=myX+ (float) ((Math.cos(myAngle)*mySpeed)); 
       myY=myY+(float)((Math.sin(myAngle)*mySpeed));
      }
  } 
}

class Particle
{
float myX,myY;
double myAngle,mySpeed;


Particle()
{
  myX=700/2;
  myY=600/2;
  myAngle=Math.random()*2*Math.PI;
  mySpeed=2+Math.random()*10;
}
void show()
{
  fill(254,254,254);
  ellipse(myX,myY,10,10);
}
void move()
{
  if( (myX<0) || (myX>800) || 
      (myY<0) || (myY>700)){
        myX=700/2;
        myY=600/2;
      }
      else{
       myX=myX+ (float) ((Math.cos(myAngle)*mySpeed)); 
       myY=myY+(float)((Math.sin(myAngle)*mySpeed));
      }
  }
}
