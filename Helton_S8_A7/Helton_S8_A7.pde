//Tanner Helton
void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  flower(width/2, height/5, 20, color(90, 34, 100));
  flower(2*width/3, height/4, 30, color(100, 230, 250));
  flower(width/3, height/4, 40, color(240, 100, 220));
  for (int i = 10; i > 0; i--) {
    flower(width-i*25, height/2, i*10, color(i, i/10, i*10));
  }
}
void flower(float x, float y, float h, color c) {
  fill(c);
  stroke(c);
  strokeWeight(5);
  line(x, y, x, y+h);
  noStroke();
  ellipse(x, y, 30, 30);
}