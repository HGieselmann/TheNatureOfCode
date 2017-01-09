class MonteCarloWalker {
  float r1, r2;
  int x,y,p;
  color c;
  
  // Constructor
  MonteCarloWalker (int tempX, int tempY, int tempProb, color tempC) {
    x = tempX;
    y = tempY;
    c = tempC;
    p = tempProb;
  }
  
  float montecarlo() {
    while(true) {
      float r1 = random(0,1);
      float probablity = r1;
      float r2 = random(0,1);
      
      if ( r2 < probablity) {
        return r1;
      }
    }
  }
    
    void walk() {
      float mc = montecarlo()*2;
      float stepx = random(-.2,1) * mc;
      float stepy = random(-.2,1) * mc;
      
      x += stepx;
      y += stepy;
    }
    
  void display() {
    stroke(c);
    point(x,y);
  }
}