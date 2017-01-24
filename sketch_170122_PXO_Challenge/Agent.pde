class Agent {
  //Setup Values to use.
  int x,y,tx,ty,xa,ya;
  float speedx, speedy,t;
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
    t=1;
  }
  
  void display() {
    colorMode(HSB);
    stroke(0,255,255);
    strokeWeight(2);
    point (x,y);
  }
  
  boolean collisiondetect () {
   xa = x + int(speedx);
   ya = y + int(speedy);
   borders.loadPixels();
   color c = borders.get(xa,ya);
   println(c);
   while (c < -200) {
     if (c < -200){
       t += .5;
       speedx = map(noise(t),0,.94,-3,3);
       speedy = map(noise(t+200),0,.94,-3,3);
       println(speedx);
       println(speedy);
       xa = x + int(speedx);
       ya = y + int(speedy);
       c = borders.get(xa,ya);
     } else {
       x += speedx;
       y += speedy;
     }
       
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