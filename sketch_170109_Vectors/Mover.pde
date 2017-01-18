class Mover{
  PVector vel;
  PVector pos;
  PVector acc;
  
  // Le Constructuer
  Mover(float tempVelX, float tempVelY) {
    pos = new PVector(width/2, height/2);
    vel = new PVector(random(-2,2), random(-2,2));
    acc = new PVector(random(-.5,0.5),random(-0.5,0.5));
    }
    
    void update() {
      pos.add(vel);
      //pos.add(acc);
    }
    
    void display() {
      stroke(0);
      ellipseMode(CENTER);
      ellipse(pos.x,pos.y,16,16);
    }
    
    boolean checkEdges(){
      boolean c = false;
      if (pos.x < 0 || pos.x > width){
        vel.x *= -1;
        vel.add(acc);
        c = true;
        if (pos.x < 0) {
          pos.x = 0;
        } else {
          pos.x = width;
        }
      }
      if (pos.y < 0 || pos.y > height) {
        vel.y *= -1;
        vel.add(acc);
        c = true;
        if ( pos.y < 0) {
          pos.y = 0;
        } else {
          pos.y = height;
        }
      }
      return c;
    }
}