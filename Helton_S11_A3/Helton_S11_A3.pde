Face face1;
int r, g, b;
void setup() {
  size(500, 500);
  face1 = new Face("eiMdopanT.png", width/2, height/2, 0, 100);
}

void draw() {
  background(255);
  r =  mouseX;
  g = mouseY;
  b = mouseX + int(random(100));
  tint(r, g, b);
  face1.display();
}