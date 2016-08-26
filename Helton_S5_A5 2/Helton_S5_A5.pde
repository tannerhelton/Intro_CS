void setup() {
  size(400, 400);
  rectMode(CENTER);
}
void draw() {
  background(255);
  fill(0);
  line(0, 0, width, height);
  line(width, 0, 0, height);
  ellipse(width/2, height/2, 100, 100);
  rect(width/4, height/2, 20, 20);
  rect(width/4*3, height/2, 20, 20);
}