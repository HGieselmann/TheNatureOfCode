class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float topspeed;
  
  Mover() {
    pos = new PVector (random(width),random(height));
    vel = new PVector (0,0);
    topspeed =10;
  }
  
  void update() {
   PVector mouse = new PVector(mouseX, mouseY);
   PVector dir = PVector.sub(mouse,pos);
   dir.normalize();
   dir.mult(0.9);
   acc = dir;
   
   vel.add(acc);
   vel.limit(topspeed);
   pos.add(vel);
  }
  
  void display() {
   stroke(0);
   ellipseMode(CENTER);
   ellipse(pos.x,pos.y,2,2);
  }
  }