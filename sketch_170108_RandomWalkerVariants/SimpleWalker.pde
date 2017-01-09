class SimpleWalker{
  float x,y;
  color c;
  //The Constructor
  SimpleWalker(int tempWidth, int tempHeight,color tempC){
    x = tempWidth;
    y = tempHeight;
    c = tempC;

  }
  
  void display(){
    stroke(c);
    fill(color(255,0,0));
    point(x,y);
  }
  
  void walk(){
    int choice = int(random(4));
    if (choice == 0) {
      x ++;
    } else if (choice ==1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else if (choice == 3) {
      y--;
    }
  }
  
    void gridwalk(){
    int choice = int(random(4));
    if (choice == 0) {
      x ++;
      x ++;
    } else if (choice ==1) {
      x--;
      x--;
    } else if (choice == 2) {
      y++;
      y++;
    } else if (choice == 3) {
      y--;
      y--;
    }
  }
}