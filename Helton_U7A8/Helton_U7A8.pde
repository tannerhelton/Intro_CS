void setup() {
  size(400, 400);
}

void draw() {
  for (int i = 0; i < 20; i++) {
    ellipse((mouseX-100) + i * 10, mouseY, 10, 10);
  }
}
