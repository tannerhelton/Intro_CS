//Tanner Helton
int cSize = 1;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  ellipse(mouseX, mouseY, cSize, cSize);
  cSize += 1;
  //After 250 frames the circle will start to grow by 5 every frame
  if (cSize > 250) {
    cSize += 4;
  }
  //You could vary the speed of growth by changing how much cSize is increasing by every frame
  //Such as cSize += 5;
}