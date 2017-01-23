class Agent {
  //Setup Values to use.
  int x,y,xo,yo,tx,ty;
  float speedx, speedy;
  boolean collision;
  color line;
  long r;
  
  //Constructor
  Agent (int tempX, int tempY) {
    x = tempX;
    y = tempY;
    speedx = 1;
    speedy = 1;
    collision = false;
    r = 0;
  }
  
  void display() {
    colorMode(HSB);
    stroke(0,255,255);
    strokeWeight(2);
    point (x,y);
  }
  
  boolean collisiondetect () {
   xo = x;
   yo = y;
   borders.loadPixels();
   color c = borders.get(x,y);
   println(c);
   if (c < -200) {
     x = xo;
     y = yo;
     speedx *=-1*random(1);
     speedy *=-1*random(1);
     collision = true;
   } else {
     collision = false;
   }
   
   
   return collision;
  }
  
  void move() {
    x += speedx;
    y += speedy;
  }
  
  void turn() {
    borders.loadPixels();
    speedx *= -1 + ( map(random(1),1,0.94,-.5,.5));
    speedy *= -1 + ( map(random(1),1,0.94,-.5,.5));
    speedx = constrain(speedx, -2,2);
    speedy = constrain(speedy, -2,2);
    
    
    
  }
    
    
  
}