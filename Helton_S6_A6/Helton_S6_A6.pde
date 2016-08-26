//Tanner Helton
boolean button = false;

int x = 50, y = 50, w = 100, h = 75;

void setup() {
  size(200, 200);
}
void draw() {
  if (button) {
    background(255);
    stroke(0);
  } else {
    background(0);
    stroke(255);
  }

  fill(175);
  rect(x, y, w, h);

  //The following code doesn't work because it is being constantly run. It needs to be only run when the mouse is clicked to function correctly.
  /*if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
   button = !button;
   }*/
}

void mousePressed() {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    button = !button;
  }
}