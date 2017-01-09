class DirWalker {
  float x,y;
  color c;
  
  DirWalker(int tempX, int tempY, color tempc) {
    x = tempX;
    y = tempY;
    c = tempc;
    
  }
  void walk() {
    float dir = random(1);
    if (dir < .4) {
      x++;
    } else if (dir >.4 && dir <.6) {
      x--;
    } else if (dir >.6 && dir < .8) {
      y++;
    } else if (dir > .8) {
      y--;
    }
  }
  
  void reset() {
    if (x > width) {
      x = -10;
      y = random(height);
    }
  }
        
  
  void display(){
    stroke(c);
    point(x,y);
  }
}