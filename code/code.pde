//GLOBAL VARIABLES
color red = color(255, 0, 0);
color blue = color(0, 0, 255);
int maxSize = 40;
int minSize = 10;
int maxAlpha = 255;
int minAlpha = 90;

//sets up the sketch
void setup(){
 size(600,600);
 smooth();
 background(255);
 
 //turns off outline
 noStroke();
}

//does the action
void draw(){
  color drawColor = lerpColor(red, blue, random(0,1));
  float drawAlpha = random(minAlpha, maxAlpha);
  float diameter = random(minSize, maxSize);
  
  //set the fill color and alpha
  fill(drawColor, drawAlpha);
  
  //draw the circle
  ellipse(random(width), random(height), diameter, diameter);
}

  //pause sketch by holding down anykey
void keyPressed(){
  noLoop();
}
void keyReleased(){
  loop();
}
