Face face1;
void setup() {
  size(500, 500);
  face1 = new Face("eiMdopanT.png", width/2, height/2, 0.01, 100);
}

void draw() {
  background(255);
  face1.display();
  face1.move();
}