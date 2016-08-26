PImage img;
void setup() {
  size(150, 150);
  img = loadImage("5.jpg");
}

void draw() {
  background(255);
  scale(0.078125);
  image(img, 0, 0);
}