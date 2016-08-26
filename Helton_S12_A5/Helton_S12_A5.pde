import processing.video.*;

Capture video;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();
  strokeWeight(10);
  stroke(0);
}

void captureEvent(Capture video) {
  video.read();
}
void draw() {
  loadPixels();
  video.loadPixels();
  float totalBrightness = 0;
  float recordBrightness = 0;
  int recordX = 0;
  int recordY = 0;
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y * video.width;
      color c = video.pixels[loc];
      float currentBrightness = brightness(c);
      if (currentBrightness > recordBrightness) {
        recordBrightness = currentBrightness;
        recordX = x;
        recordY = y;
      }
      totalBrightness += currentBrightness;
      pixels[loc] = video.pixels[loc];
    }
    float avgBrightness = totalBrightness / video.pixels.length;
    println("Avg: "+avgBrightness+", x: "+recordX+", y: "+recordY);
    updatePixels();
    point(recordX, recordY);
  }
}