Mover[] mover = new Mover[10];
  float cd = 255;

void setup(){
  size(640,480,FX2D);
  frameRate(60);
  for (int i = 0; i < mover.length; i++) {
  mover[i] = new Mover(0,0);
  }

  }
  

void draw() {
  boolean c;
  
  background(cd);
  for (int i = 0; i< mover.length; i++){
  mover[i].update();
  mover[i].display();
  c = mover[i].checkEdges();
  if (c == true) {
    cd = random(255);
  }
  }
  
}