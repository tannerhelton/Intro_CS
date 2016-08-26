PImage img;
void setup() {
  size(500, 500);
  img = loadImage("moon.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();

  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y * width;
      float r = 2*red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);

      pixels[loc] = color(r, g, b);
    }
  }
  updatePixels();
}