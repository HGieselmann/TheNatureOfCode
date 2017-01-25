class Agent {
  //Setup Values to use.
  int x,y,tx,ty,xa,ya;
  float dirx, diry,t, speed,hue;
  boolean collision;
  color line;
  long r;
  PVector location;
  PVector direction;
  PVector acc;
  
  //Constructor
  Agent (int tempX, int tempY) {
    x = tempX;
    y = tempY;
    dirx = 1;
    diry = 1;
    speed = 2;
    collision = false;
    r = 0;
    location = new PVector(tempX, tempY);
    direction = new PVector(1,1);
    hue = 0;
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
    x += dirx * speed;
    y += diry * speed;
    println("Moved!");
  }
  
  void turn() {
    t += 0.3;
    //dirx = constrain(1/map(noise(t),0,1,-1,1),-1,1);
    //diry = constrain(1/map(noise(t+t),0,1,-1,1),-1,1);
    direction.x = random(-1,1);
    direction.y = random(-1,1);
  } 
  
  void display() {
    colorMode(HSB);
    hue = hue +.1;
    stroke(hue,255,255);
    strokeWeight(2);
    point (x,y);
  }
    
    
  
}