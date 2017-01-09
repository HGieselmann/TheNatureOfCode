class MouseWalker {
  int x,y;
  color c;
  int mousedir;
  
  // Le Constructeur
  MouseWalker(int tempX, int tempY, color tempC){
    x = tempX;
    y = tempY;
    c = tempC;
  }
  void dir() {

  }
  
  void walk() {
    float r = random(1);
    int mousedir = 0;
    if (mouseX < width/2 && mouseY < height/2) {
      mousedir = 0;
    } else if (mouseX > width/2 && mouseY < height/2) {
      mousedir = 1;
    } else if (mouseX > width/2 && mouseY > height/2) {
      mousedir = 2;
    } else if (mouseX < width/2 && mouseY > height/2) {
      mousedir = 3;
    }
    
    
    if (mousedir == 0) {
      if (r <.4) {
        x--;
      } else if (r >.4 && r <.8) {
        y--;
      } else if (r >.8 && r < .9) {
        x++;
      } else if (r < 1) {
        y++;
      }
    } else if (mousedir == 1) {     
      if (r <.4) {
        x++;
      } else if (r >.4 && r <.8) {
        y--;
      } else if (r >.8 && r < .9) {
        x--;
      } else if (r < 1) {
        y++;
      }
    } else if (mousedir == 2) {
      if (r <.4) {
        x++;
      } else if (r >.4 && r <.8) {
        y++;
      } else if (r >.8 && r < .9) {
        x--;
      } else if (r < 1) {
        y--;
      }
    } else if (mousedir == 3) {
      if (r <.4) {
        x--;
      } else if (r >.4 && r <.8) {
        y++;
      } else if (r >.8 && r < .9) {
        x++;
      } else if (r < 1) {
        y--;
      }
    }
  }

  
  void display(){
    stroke(c);
    point(x,y);
  }
  
}