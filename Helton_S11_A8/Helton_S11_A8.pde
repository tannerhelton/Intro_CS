PImage img;
void setup() {
  size(500, 500);
  img = loadImage("porsche.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();

  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      int loc = x + y * img.width;
      float distance = dist(x, y, mouseX, mouseY);
      float adjustBrightnessd = map(distance, 0, width, 0, 8);
      float adjustBrightnessy = map(mouseY, 0, height, 0, 8);
      float adjustBrightnessx = map(mouseX, 0, width, 0, 8);
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      r *= adjustBrightnessx;
      g *= adjustBrightnessy;
      b *= adjustBrightnessd;
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      color c = color(r, g, b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}