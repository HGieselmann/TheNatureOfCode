class Walker {
  float x, y;
  color c;
  // It follows the Consructor
  Walker(int tempX, int tempY, color tempc) {
    x = tempX;
    y = tempY;
    c = tempc;
  }
  
  void walk() {
    int walkX = int(random(3))-1;
    int walkY = int(random(3))-1;
    x = x + walkX;
    y = y + walkY;
  }
  
  void display() {
    stroke(c);
    point(x,y);
    
  }
}