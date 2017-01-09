class PerlinWalker {
  float x, y, tx, ty, inc;
  color c;
  
  
  // Constructor
  PerlinWalker (float tempX, float tempY, float tempTX,float tempTY, float tempInc, color tempC) {
    x = tempX;
    y = tempY;
    tx = tempTX;
    ty = tempTY;
    inc = tempInc;
    c = tempC;
  }
  
  void walk() {
    x += map(noise(tx),0,1,-2,2);
    y += map(noise(ty),0,1,-2,2);
    
    tx += inc;
    ty += inc;
  }
  
  void display(){
    stroke(c);
    point(x,y);
  }
}