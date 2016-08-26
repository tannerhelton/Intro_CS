void setup(){
  //Setup stroke, size, and fill
  size(300,300);
  fill(0);
  stroke(2);
}
void draw(){
  //Draw the shapes
  point(10,10);
  line(10,50,10,90);
  line(0,90,50,40);
  ellipseMode(CENTER);
  ellipse(60,20,90,40);
  rectMode(CORNERS);
  rect(50,60,90,90);
}