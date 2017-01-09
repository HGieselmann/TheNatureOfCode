class GaussianWalker {
  float x,y;
  color c;
  float mult;
  
  // Constructor
  GaussianWalker (int tempX, int tempY, color tempC, float tempMult) {
    x = tempX;
    y = tempY;
    c = tempC;
    mult = tempMult;
  }
  
  void walk() {
    float GaussX = randomGaussian()*mult;
    float GaussY = randomGaussian()*mult;

    
    x = x + GaussX;
    y = y + GaussY;
    
  }
  
  void display() {
    stroke(c);
    point(x,y);
  }
}