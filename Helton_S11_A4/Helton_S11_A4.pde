PImage porsche, pagani, mclaren, one, ferrari;
void setup() {
  size(800, 800);
  porsche = loadImage("5.jpg");
  pagani = loadImage("pagani.jpg");
  mclaren = loadImage("mclaren.jpg");
  one = loadImage("one.jpg");
  ferrari = loadImage("ferrari.jpg");
}
void draw() {
  imageMode(CORNERS);
  colorMode(RGB, width);
  tint(mouseX, mouseY, 255);
  image(porsche, 0, 0, width/2, height/2);
  image(pagani, width/2, 0, width, height/2);
  image(mclaren, 0, height/2, width/2, height);
  image(one, width/2, height/2, width, height);
  colorMode(RGB, 255);
  tint(mouseX, mouseY, 255, 200);
  image(ferrari, width/3, height/3, 2*width/3, 2*height/3);
}