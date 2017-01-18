Agent[] agents = new Agent[50];

void setup() {
  size(1280, 720,FX2D);
  frameRate(60);
  background(50);
  //agent[] = new Agent(2,0.1,color(255));
  for (int i = 0; i < agents.length; i++) {
    agents[i] = new Agent(2,0.01,random(200),random(200),color(random(255),random(255),random(255)));
  }
}

void draw() {
  
  for (int i = 0; i < agents.length; i++) {
  println(agents[i].move());
  
  agents[i].display();
  }
  
}