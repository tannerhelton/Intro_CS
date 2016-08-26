import processing.video.*;
Snake snake;
Capture video;
color trackColor;
void setup() {
  size(1280, 720);
  snake = new Snake(255, 0, 0, 90, "ellipse");
  video = new Capture(this, width, height);
  video.start();
  trackColor = color(0, 255, 0);
}
void captureEvent(Capture video) {
  video.read();
}
void mousePressed() {
  int loc = mouseX + mouseY*video.width;
  trackColor = video.pixels[loc];
}
void draw() {
  video.loadPixels();
  image(video, 0, 0);
  float record = 500;
  int closestX = 0;
  int closestY = 0;
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      int loc = x + y*video.width;
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);
      float d = dist(r1, g1, b1, r2, g2, b2);
      if (d < record) {
        record = d;
        closestX = x;
        closestY = y;
      }
    }
  }
  if (record < 10) {
    fill(trackColor);
    strokeWeight(4.0);
    stroke(0);
    ellipse(closestX, closestY, 16, 16);
  }
  snake.display(red(trackColor), green(trackColor), blue(trackColor), 45, "ellipse", closestX, closestY);
}