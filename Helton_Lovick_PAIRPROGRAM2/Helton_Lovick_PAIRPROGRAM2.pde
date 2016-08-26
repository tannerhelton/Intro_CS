//Tanner Helton and Nick Lovick
int box = 30;

void setup() {
  surface.setSize(box*15, box*15);
  frame.setLocation(displayWidth/2-width/2, displayHeight/2-height/2);
}
int mx = 0;
int my = 0;
void draw() {
  background(255);
  for (int i = height; i > 0; i--) {
    line(0, i * box, width, i*box);
    line(i * box, 0, i * box, height);
    fill(0);
    text("x= " +mouseX, 15, height/5);
    text("y= " +mouseY, 15, 2*height/8);
  }
  for (float  i = 0; i < box; i++) {
    mx = round(float(mouseX)/i)*box;
  }
  for (float i = 0; i < box; i++) {
    my = round(float(mouseY)/i)*box;
  }
  strokeWeight(box/2);
  point(mx, my);
  strokeWeight(1);
}