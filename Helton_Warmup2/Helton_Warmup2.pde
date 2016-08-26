float x = 100;
float y = 0;
float speed = 0;
float gravity = 0.1;
int time = 1000;
void setup() {
  size(800, 600);
  fill(0);
}

void draw() {
  x += 0.5;
  if (x > width) {
    x = 0;
  }
  long elapsed = millis();
  background(255);
  ellipse(x, y, 10, 10);

  y = y + speed;
  if (y > height) {
    speed = speed * -1;
  }

  int rand = int(random(1000));
  if (speed > 0 && rand < 50 && elapsed > time && y > 0 && y < height) {
    time += 1000;
    speed = speed * -1;
  }

  speed = speed + gravity;
}