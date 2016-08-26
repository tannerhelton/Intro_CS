class Creature {

  Creature() {
  }

  void drawCreature(int x, int y) {
    rectMode(CORNERS);
    colorMode(RGB, 255);
    float f = 500;
    //Click the mouse to change the color of the creature and press any key to reset the color to black.
    float r = 0, g = 0, b = 0;
    if (mousePressed) {
      r = random(256);
      g = random(256);
      b = random(256);
    }

    stroke(0);
    noStroke();
    strokeWeight(1);
    fill(r, g, b);
    //Works with this, but not a part of the assignment translate(x-f, y-f);
    triangle(x-(f-84), y-(f-59), x-(f-110), y-(f-4), x-(f-133), y-(f-59));
    triangle(x-(f-232), y-(f-54), x-(f-300), y-(f-52), x-(f-267), y-(f-7));
    rect(x-468, y-450, x-(f-346), y-(f-361));
    rect(x-(f-206), y-(f-224), x+(882-f), y+(609-f));
    fill(255);
    rect(x-(f-68), y-(f-130), x-(f-187), y-(f-250));
    rect(x-(f-326), y-(f-77), x-(f-201), y-(f-250));
    ellipse(x-(f-188), y-(f-281), 38, 37);
    fill(r, g, b);
    rect(x-(f-311), y-(f-338), x-(f-423), y+(738-f));  
    rect(x+(697-f), y-(f-421), x+(802-f), y+(738-f));
    ellipse(x+(893-f), y-(f-207), 224, 229);
    stroke(255);
    strokeWeight(5);
    line(x-(f-309), y-(f-326), x-(f-60), y-(f-325));

    //I added a loop to make random dots appear accross the screen
    /*for (float q = 10; q > 0; q -= 1) {
     colorMode(RGB, 10);
     stroke(q);
     point(random(0, width), random(0, height));
     }*/
  }
}