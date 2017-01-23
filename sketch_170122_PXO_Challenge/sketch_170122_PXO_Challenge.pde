// Create the Initials
Agent agent;
PImage borders;

 // Initialize Sketch 
void setup () {
 size (1280,720,FX2D);
 frameRate(60);
 background(50);
 agent = new Agent(width/2, (height/2)-40);
 borders = loadImage("borders_3.jpg");
 
 
}

void draw() {
  image(borders,0,0);
  boolean change = false;
  agent.move();
  agent.display(); 
  change = agent.collisiondetect();
  //if (change == true){
    //agent.turn();
    
  //}
}