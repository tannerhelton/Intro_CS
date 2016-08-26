//Tanner Helton
void setup() {
  size(200, 200);
}
void draw() {
  background(255);

  for (int y = 0; y < 200; y += 10) {
    stroke(0);
    line(0, y, width, y);
  }
}