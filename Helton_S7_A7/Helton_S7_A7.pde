//Tanner Helton
void setup() {
  size(200, 200);
  background(0);
}
void draw() {
  background(0);
  for (int i = 0; i < width; i += 10) {
    noStroke();
    float distance = abs(mouseX - i);
    fill(distance);
    rect(i, 0, 10, height);
  }
}