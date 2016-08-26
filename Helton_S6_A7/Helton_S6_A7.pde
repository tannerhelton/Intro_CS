//Tanner Helton
boolean ms = false;

int circleX = 0, circleY = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(100);
  stroke(255);
  fill(0);
  ellipse(circleX, circleY, 50, 50);
  if (ms == true) {
    circleX += 1;
  }
}

void mousePressed() {
  ms = true;
}

void mouseReleased() {
  ms = false;
}