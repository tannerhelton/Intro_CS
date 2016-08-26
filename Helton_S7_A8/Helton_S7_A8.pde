//Tanner Helton
void setup() {
  size(200, 200);
  background(0);

  //This code draws the initial squares and randomizes the colors
  for (int i = 0; i < 200; i += 20) {
    noStroke();
    for (int e = 0; e < 200; e += 20) {
      fill(random(256), random(256), random(256));
      rect(i, e, 20, 20);
    }
  }
}
void draw() {
}
//If you press any key the squares will change colors
void keyPressed() {
  for (int i = 0; i < 200; i += 20) {
    noStroke();
    for (int e = 0; e < 200; e += 20) {
      fill(random(256), random(256), random(256));
      rect(i, e, 20, 20);
    }
  }
}