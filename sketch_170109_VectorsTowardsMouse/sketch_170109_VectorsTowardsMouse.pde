Mover[] movers = new Mover[300];

void setup() {
  size(640,360,FX2D);
  frameRate(30);
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
  
}

void draw ( ) {
  background(255,10);
  
  for ( int i = 0; i < movers.length; i++) {
    movers[i].update();
    //movers.[i].checkEdges();
    movers[i].display();
  }
}