//Tanner Helton
void setup() {
  size(200, 200);
}
void draw() {
  background(255);

  for (int y = 200; y > 0; y -= 20) {
    stroke(0);
    fill(y);
    ellipse(width/2, height/2, y, y);
  }
}