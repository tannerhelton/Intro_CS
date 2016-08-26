//Tanner Helton
void setup() {
  //Set size and mode of rectangles
  size(1000, 1000);
  rectMode(CORNERS);
}
float eyeY = 130;
float turnEye = 1;
void draw() {
  float r = random(256);
  float g = random(256);
  float b = random(256);
  float strokeS = random(100);
  if (eyeY != 250) {
    eyeY += 1;
  }
  turnEye += 1;
  translate(mouseX-500, mouseY-500);
  stroke(0);
  strokeWeight(strokeS);
  background(255);
  fill(r, g, b);
  triangle(84, 59, 110, 4, 133, 59);
  triangle(232, 54, 300, 52, 267, 7);
  rect(32, 50, 346, 361);
  rect(206, 224, 882, 609);
  fill(255);
  ellipse(188, 281, 38, 37);
  fill(r, g, b);
  rect(311, 338, 423, 738);  
  rect(697, 421, 802, 738);
  ellipse(893, 207, 224, 229);
  stroke(255);
  strokeWeight(5);
  line(309, 326, 60, 325);
  fill(255);
  rotate(radians(turnEye));
  rect(68, 130, 187, eyeY);
  rect(326, 77, 201, 250);
}