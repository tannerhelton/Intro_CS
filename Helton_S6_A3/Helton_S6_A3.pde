//Tanner Helton
float x = 0;
void setup() {
  size(200, 200);
}
void draw() {
  background(255);
  //Display object
  fill(0);
  rect(x, 100, 20, 20);

  //Increment x
  /*if (x != 100) {
   x += 1;
   }*/

  //Constrain x
  x = constrain(x, 0, 100);
  x += 1;
}