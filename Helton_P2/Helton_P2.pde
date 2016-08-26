//Tanner Helton
void setup() {
  //Set size and mode of rectangles
  size(1000, 1000);
  rectMode(CORNERS);
}
void draw() {
  float x = mouseX;
  float y = mouseY;
  float f = 500;
  stroke(0);
  noStroke();
  strokeWeight(1);
  background(255);
  fill(0);
  //Works with this, but not a part of the assignment translate(x-f, y-f);
  triangle(x-(f-84), y-(f-59), x-(f-110), y-(f-4), x-(f-133), y-(f-59));
  triangle(x-(f-232), y-(f-54), x-(f-300), y-(f-52), x-(f-267), y-(f-7));
  rect(x-468, y-450, x-(f-346), y-(f-361));
  rect(x-(f-206), y-(f-224), x+(882-f), y+(609-f));
  fill(255);
  rect(x-(f-68), y-(f-130), x-(f-187), y-(f-250));
  rect(x-(f-326), y-(f-77), x-(f-201), y-(f-250));
  ellipse(x-(f-188), y-(f-281), 38, 37);
  fill(0);
  rect(x-(f-311), y-(f-338), x-(f-423), y+(738-f));  
  rect(x+(697-f), y-(f-421), x+(802-f), y+(738-f));
  ellipse(x+(893-f), y-(f-207), 224, 229);
  stroke(255);
  strokeWeight(5);
  line(x-(f-309), y-(f-326), x-(f-60), y-(f-325));
}