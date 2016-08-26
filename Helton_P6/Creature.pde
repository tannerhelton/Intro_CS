class Creature {
  int x, y;
  color hc, bc, ec;


  Creature(int xt, int yt, color hct, color bct, color ect) {
    x = xt;
    y = yt;
    hc = hct;
    bc = bct;
    ec = ect;
  }

  void display() {
    rectMode(CORNERS);
    colorMode(RGB, 255);
    int f = 500;

    stroke(0);
    noStroke();
    strokeWeight(1);
    fill(hc);
    //Draw ears
    drawEars(x, y, f);
    fill(bc);
    //Draw body
    drawBody(x, y, f);
    fill(ec);
    //Draw eyes
    drawEyes(x, y, f);
    //Draw nose
    drawNose(x, y, f);
    stroke(255);
    strokeWeight(5);
    //Draw mouth
    drawMouth(x, y, f);

    //I added a loop to make random dots appear accross the screen
    for (float q = 10; q > 0; q -= 1) {
      colorMode(RGB, 10);
      stroke(q);
      point(random(0, width), random(0, height));
    }
  }
  void drawEars(int x, int y, int f) {
    triangle(x-(f-84), y-(f-59), x-(f-110), y-(f-4), x-(f-133), y-(f-59));
    triangle(x-(f-232), y-(f-54), x-(f-300), y-(f-52), x-(f-267), y-(f-7));
  }
  void drawBody(int x, int y, int f) {
    rect(x-468, y-450, x-(f-346), y-(f-361));
    rect(x-(f-206), y-(f-224), x+(882-f), y+(609-f));
    rect(x-(f-311), y-(f-338), x-(f-423), y+(738-f));  
    rect(x+(697-f), y-(f-421), x+(802-f), y+(738-f));
    ellipse(x+(893-f), y-(f-207), 224, 229);
  }
  void drawEyes(int x, int y, int f) {
    rect(x-(f-68), y-(f-130), x-(f-187), y-(f-250));
    rect(x-(f-326), y-(f-77), x-(f-201), y-(f-250));
  }
  void drawNose(int x, int y, int f) {
    ellipse(x-(f-188), y-(f-281), 38, 37);
  }
  void drawMouth(int x, int y, int f) {
    line(x-(f-309), y-(f-326), x-(f-60), y-(f-325));
  }
}