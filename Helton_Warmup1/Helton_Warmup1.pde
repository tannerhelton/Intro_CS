void setup() {
  size(500, 500);
}
int y = 20;
int time = 0;
int cycle = 0;
boolean move = false;
int up = 1;
boolean reset = false;
void draw() {
  time += 1;
  if (time == 180) {
    time = 0;
    move = true;
  }
  if (move == true) {
    if  (up == 1) {
      y += 1;
      if (y == 40) {
        up = 0;
      }
    }
    if  (up == 0) {
      y -= 1;
      if (y == 0) {
        reset = true;
        up = 3;
      }
    }
    if (reset == true) {
      if (y != 20) {
        y += 1;
      } else {
        move = false;
        up = 1;
        reset = false;
      }
    }
  }
  background(100);
  stroke(0);
  strokeWeight(3);
  line(width/2, height/2-20, width/2-30, height/2-20);
  line(width/2, height/2-20, width/2+30, height/2-y);
  fill(255);
  noStroke();
  ellipse(width/2, height/2, 40, 40);
  ellipse(width/2, height/2-20, 30, 30);
  ellipse(width/2, height/2-35, 20, 20);
}