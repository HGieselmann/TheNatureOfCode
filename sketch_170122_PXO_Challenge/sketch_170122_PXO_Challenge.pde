// Create the Initials
Agentv agentv;
PImage borders;

 // Initialize Sketch 
void setup () {
 size (1280,720,FX2D);
 //frameRate();
 background(50);
 agentv = new Agentv(width/2, (height/2)-40);
 borders = loadImage("borders_3.png");
 
 
}

void draw() {
  //image(borders,0,0);
  boolean collision = false;

  agentv.display(); 
  collision = agentv.collisiondetect();
  while (collision == true){
    agentv.turn();
    collision = agentv.collisiondetect();
  } 
  agentv.move();
  int frame = frameCount;
  println(frame);
  if (frame == 10000) {
    save("final.tif");
  }
}