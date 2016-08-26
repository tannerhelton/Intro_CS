//Tanner Helton
void setup(){
  size(200,200);
}
void draw(){
  background(0);
  fill(255);
  stroke(0);
  strokeWeight(2);
  rectMode(CORNERS);
  rect(100,0,200,100);
  rect(0,100,100,200);
  fill(200);
  rect(100,100,200,200);
}