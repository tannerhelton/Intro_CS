import processing.video.*;

Capture video;

void setup() {
  size(1280, 720);
  video = new Capture(this, Capture.list()[0]);
  video.start();
}
int pointillize = 16;
boolean first = true;
int i = 0;
void draw() {
  noStroke();
  while (i < 200) {
    i += 1;
    int x = int(random(width));
    int y = int(random(height));
    int loc = x + y * width;
    if (first) {
      delay(5000);
      first = false;
    }
    loadPixels();
    float r = red(video.pixels[loc]);
    float g = green(video.pixels[loc]);
    float b = blue(video.pixels[loc]);
    fill(r, g, b, 100);
    //ellipse(x, y, pointillize, pointillize);
    //rect(x, y, pointillize, pointillize);
    triangle(x-pointillize, y-pointillize, x+pointillize, y-pointillize, x-pointillize, y+pointillize);
  }
  i = 0;
}
void captureEvent(Capture video) {
  video.read();
}