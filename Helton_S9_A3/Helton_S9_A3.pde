//Tanner Helton
Ball clsTest;

void setup() {
  size(200, 200);
  clsTest = new Ball(100, 0, 10, 0, 0.1, color(175));
}
void draw() {
  background(255);
  clsTest.display();
  clsTest.move();
  clsTest.bounce();
}