int x = 0;
int speed = 4;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  move();
  bounce();
  display();
}

void move() {
  x += speed;
}

void bounce() {
  if (x > width || x < 0) {
    speed = speed * -1;
  }
}

void display() {
  stroke(0);
  fill(175);
  ellipse(x, 100, 32, 32);
}
