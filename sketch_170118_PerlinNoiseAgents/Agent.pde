class Agent {
  float size;
  color c;
  float x, y, t;
  float timestep;
  float xoff, yoff;
 // constructor
  float xold,xnew,yold;
 Agent (float tempSize,float tempTime, float tempXoff, float tempYoff, color tempC) {
   size = tempSize;
   c = tempC;
   timestep = tempTime;
   x = (tempXoff)*(width/2);
   y = (tempYoff)*(height/2);
   xold = x;
   yold = y;
   xoff = tempXoff;
   yoff = tempYoff;
 }
 
 float move() {
  xold = x;
  yold = y;
  x += map(noise(t + xoff),0,0.94,-5,5);
  y += map(noise(t + yoff),0,0.94,-5,5);
  t += timestep;
  return xold;
 }
 
 void display() {
  strokeWeight(size);
  stroke(c);
  fill(c);
  //ellipseMode(CENTER);
  //ellipse(x,y,size,size);
  line(x,y,xold,yold);
  //size += -0.01;

  
  
 }
}