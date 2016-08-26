//Tanner Helton
void setup() {
  size(200, 200);
}
void draw() {
  background(255);

  float w = 200;
  while (w > 20) {
    stroke(0);
    fill(w);
    ellipse(width/2, height/2, w, w);
    w -= 20;
  }
}