// Diferent variants of a random Walk in Processing
// Everything inspired by Daniel Shiffmans wonderful "The Natur of Code"
// Henrik Gieselmann

SimpleWalker simplewalker;
SimpleWalker gridwalker;
Walker walker;
DirWalker dirwalker;
MouseWalker mousew;
GaussianWalker gaussw;
MonteCarloWalker montecarlowalker;
PerlinWalker perlinwalker;

void setup() {
  frameRate(120);
  size(1280,720);
  //fullScreen();
  background(50);
  simplewalker = new SimpleWalker(width/4, height/4, color(255,0,0));
  gridwalker = new SimpleWalker((width/4)*3, height/4, color(0,255,0));
  walker = new Walker (width/4, (height/4)*3, color(0,0,255));
  dirwalker = new DirWalker (width/2, height/2, color(255,0,255));
  mousew = new MouseWalker(width/2, height/2, color(255,255,0));
  gaussw = new GaussianWalker(width/2, height/2, color(0,255,255), 3);
  montecarlowalker = new MonteCarloWalker (width/2,height/2,1, color(255,255,255));
  perlinwalker = new PerlinWalker((width/4)*3, (height/4)*3, 120,200,0.1,color(255,0,0));
  
}

void draw() {
  // A very simple Walker
  simplewalker.walk();
  simplewalker.display();
  
  // Grid Walker
  gridwalker.gridwalk();
  gridwalker.display();
  
  // 8 Direction Walker
  walker.walk();
  walker.display();
  
  // Directional Walker
  dirwalker.walk();
  dirwalker.display();
  dirwalker.reset();
  
  // Mouse Walker
  mousew.walk();
  mousew.display();
  
  // Gaussian Walker
  gaussw.walk();
  gaussw.display();
  
  // MonteCarlo Walker
  montecarlowalker.walk();
  montecarlowalker.display();
  
  // Perlin Walker
  perlinwalker.walk();
  perlinwalker.display();
}
  