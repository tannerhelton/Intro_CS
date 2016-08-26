Human person;

void setup() {
  person = new Human();
  size(500, 500);
}
boolean tf = false;
void draw() {
  background(255);
  //Display takes the arguments of (x, y , height, body color, head color, eye color)
  person.display(width/2, height/2, 60, color(0), color(255, 0, 0), color(0, 255, 0));
  if (tf == true) {
    person.sleep();
  }
}
//If the mouse is pressed it either makes him sleep or wakes him up
void mousePressed() {
  tf = !tf;
}