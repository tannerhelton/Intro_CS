//Project created by Tanner Helton

void setup() {
  //Initiate variables
  int s, o;
  s = 2;
  o = 20;

  //Set background, size, fill, storke, etc...
  background(255);
  size(600,600);
  fill(o);
  stroke(2);
  scale(s);
  ellipseMode(CENTER);
  rectMode(CORNERS);

  //Print text in console
  println("Hello");
  println("Scale: "+s);
  println("Color: "+o);
}
void draw() {
  //Draw the shapes
  point(10, 10);
  line(10, 50, 10, 90);
  line(0, 90, 50, 40);
  ellipse(60, 20, 90, 40);
  rect(50, 60, 90, 90);
}