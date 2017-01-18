Agent[] agents = new Agent[500];

void setup() {
  size(1920,1080,FX2D);
  frameRate(60);
  background(50);
  colorMode(HSB,100);
  //agent[] = new Agent(2,0.1,color(255));
  for (int i = 0; i < agents.length; i++) {
    agents[i] = new Agent(1,0.01,noise((i+1)/1),random((i+5)/100),color(random(20,40),random(20),random(50)));
  }
}

void draw() {
  //background(50);
  for (int i = 0; i < agents.length; i++) {
  println(agents[i].move());
  
  agents[i].display();
  }
  
}