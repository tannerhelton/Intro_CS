import processing.video.*;

Capture video;
PImage destination;
void setup() {
  size(1280, 720);
  video = new Capture(this, Capture.list()[0]);
  video.start();
  destination = createImage(width, height, RGB);
}
boolean first = true;
void draw() {

  float threshold = map(mouseX, 0, width, 0, 255);
  video.loadPixels();
  destination.loadPixels();
  if (first) {
    delay(5000);
    first = false;
  }
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y*video.width;
      if (brightness(video.pixels[loc]) > threshold) {
        destination.pixels[loc] = color(255);
      } else {
        destination.pixels[loc] = color(0);
      }
    }
  }
  destination.updatePixels();
  image(destination, 0, 0);
}
void captureEvent(Capture video) {
  video.read();
}