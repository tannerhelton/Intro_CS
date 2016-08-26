//Tanner Helton
Creature creature1;
void setup() {
  //Set size
  size(1000, 1000);
  //Create creature objects
  creature1 = new Creature(height/2, width/2, color(255, 0, 0), color(0, 255, 0), color(0, 0, 255));
}
void draw() {
  background(255);
  creature1.display();
}