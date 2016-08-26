//Tanner Helton
void setup() {
  //Set size and mode of rectangles
  size(1000, 1000);
  rectMode(CORNERS);
}
void draw() {
  stroke(0);
  strokeWeight(1);
  background(255);
  fill(0);
  triangle(84, 59, 110, 4, 133, 59);
  triangle(232, 54, 300, 52, 267, 7);
  rect(32, 50, 346, 361);
  rect(206, 224, 882, 609);
  fill(255);
  rect(68, 130, 187, 250);
  rect(326, 77, 201, 250);
  ellipse(188, 281, 38, 37);
  fill(0);
  rect(311, 338, 423, 738);  
  rect(697, 421, 802, 738);
  ellipse(893, 207, 224, 229);
  stroke(255);
  strokeWeight(5);
  line(309, 326, 60, 325);
}