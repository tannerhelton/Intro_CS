void setup() {
  size(200, 200);
  background(255);
  drawCar(100, 100, 64, color(255, 255, 0));
}

void drawCar(int x, int y, int thesize, color C) {
  int offset = thesize / 4;

  rectMode(CENTER);
  stroke(3);
  fill(C);
  rect(x, y, thesize, thesize / 2);

  fill(0);
  rect(x - offset, y - offset, offset, offset / 2);
  rect(x + offset, y - offset, offset, offset / 2);
  rect(x - offset, y + offset, offset, offset / 2);
  rect(x + offset, y + offset, offset, offset / 2);
}
