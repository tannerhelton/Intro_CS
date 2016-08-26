Creature[] c;

void setup() {
  size(1000, 1000);
  c = new Creature[3];
  c[0] = new Creature();
  c[1] = new Creature();
  c[2] = new Creature();
}

void draw() {
  background(255);
  c[0].drawCreature(mouseX, mouseY);
  c[1].drawCreature(500, 500);
  c[2].drawCreature(100, 100);
}