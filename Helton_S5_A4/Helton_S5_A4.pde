int xa = 100;
int xb = 300;
int xc = 100;
int xd = 300;
int ya = 100;
int yb = 100;
int yc = 300;
int yd = 300;
int cSize = 20;
void setup() {
  size(400, 400);
}
void draw() {
  translate(mouseX-200, mouseY-200);
  background(255);
  fill(0);
  stroke(0);
  ellipse(xa, ya, cSize, cSize);
  ellipse(xb, yb, cSize, cSize);
  ellipse(xc, yc, cSize, cSize);
  ellipse(xd, yd, cSize, cSize);
  if (cSize < 200) {
    cSize += 1;
  }
}