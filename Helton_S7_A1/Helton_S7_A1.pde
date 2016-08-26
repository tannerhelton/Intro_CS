//Tanner Helton
void setup() {
  size(200, 200);
}
void draw() {
  background(255);

  int y = 0;
  while (y < 201) {
    stroke(0);
    line(0, y, width, y);
    y += 10;
  }
}