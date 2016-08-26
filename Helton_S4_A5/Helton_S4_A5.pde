//Tanner Helton
void setup() {
  size(200, 200);
  background(255);
}
void draw() {
  float mouseSpeed = abs(pmouseX - mouseX);
  stroke(0);
  strokeWeight(mouseSpeed);
  line(pmouseX, pmouseY, mouseX, mouseY);
}