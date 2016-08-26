PImage img;
int pointillize = 16;

void setup() {
  size(500, 500);
  img = loadImage("porsche.jpg");
  background(0);
}

void draw() {
  noStroke();
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize);
  rect(x, y, pointillize, pointillize);
  triangle(x-pointillize/2, y-pointillize/2, x+pointillize/2, y-pointillize/2, x-pointillize/2, y+pointillize/2);
  stroke(r, g, b, 100);
  strokeWeight(10);
  point(x, y);
}