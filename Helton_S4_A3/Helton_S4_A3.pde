//Tanner Helton
void setup() {
  size(200, 200);
  //Having background in setup only runs once, this makes it so that the canvas isn't cleared everytime a new frame is drawn
  background(255);
}
void draw() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 50, 50);
}