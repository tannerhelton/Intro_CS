void setup() {
  size(200, 200);
}
void draw() {
  loadPixels();
  for (int x = 0; x < width/2; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x + y * width;
      pixels[loc] = color(dist(0, height/2, x, height/2));
    }
  }
  for (int x = width/2; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x + y * width;
      pixels[loc] = color(dist(width/2, 0, width/2, y));
    }
  }
  updatePixels();
}