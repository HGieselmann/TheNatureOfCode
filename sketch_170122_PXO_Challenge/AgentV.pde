class Agentv {
  //Setup Values to use.
  int x,y,tx,ty,xa,ya;
  float dirx, diry,t, speed, hue;
  boolean collision;
  color line;
  long r;
  PVector location;
  PVector direction;
  PVector acc;
  
  //Constructor
  Agentv (int tempX, int tempY) {
    x = tempX;
    y = tempY;
    dirx = 1;
    diry = 1;
    speed = 2;
    collision = false;
    r = 0;
    hue = 0;
    location = new PVector(tempX, tempY);
    direction = new PVector(1,1);
  }
  
  boolean collisiondetect () {
   xa = int(location.x + direction.x);
   ya = int(location.y + direction.y);
   borders.loadPixels();
   color c = borders.get(xa,ya);
   if (c < -1) {
     collision = true;
   } else {
     collision = false;
   }
   return collision;
  }
  
  void move() {
    t+= 0.05;
    direction.x += map(noise(t+2),0,.94,-.1,.1);
    direction.y += map(noise(t),0,.94,-.1,.1);
    direction.normalize();
    location.x += direction.x*speed;
    location.y += direction.y*speed;
    
    println("Moved!");
  }
  
  void turn() {
    direction.x = random(-1,1);
    direction.y = random(-1,1);
    direction.normalize();
  } 
  
  void display() {
    colorMode(HSB);
    hue = hue + 0.1;
    stroke(hue % 360,255,255);
    strokeWeight(2);
    point (location.x,location.y);
    //ellipse(x,y,2,2);
  }
    
    
  
}