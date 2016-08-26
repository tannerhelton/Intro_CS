void setup() {
  size(200, 200);
}
void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int loc = x + y * width;
      pixels[loc] = color(dist(width/2, height/2, x, y));
    }
  }
  updatePixels();
}