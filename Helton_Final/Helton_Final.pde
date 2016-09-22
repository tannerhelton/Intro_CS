class Helton implements SeaCreature {
  int posx, posy;
  float yspeed = 2;
  float xspeed = 1;
  boolean right = true;
  boolean up = true;
  int time = 500;
  Helton(int x, int y) {
    posx = x;
    posy = y;
  }
  public void move() {
    long elapsed = millis();
    if (right) {
      if (posx+20 < width) {
        posx += xspeed;
        xspeed += 0.001;
      } else {
        xspeed = 1;
        right = false;
      }
    } else {
      if (posx-20 > 0) {
        posx -= xspeed;
        xspeed += 0.01;
      } else {
        right = true;
        xspeed = 1;
      }
    }

    if (up) {
      if (posy+20 < height) {
        posy += yspeed;
        yspeed += 0.001;
      } else {
        up = false;
        yspeed = 2;
      }
    } else {
      if (posy-20 > 0) {
        posy -= yspeed;
        yspeed += 0.001;
      } else {
        up = true;
        yspeed = 2;
      }
    }

    if (elapsed > time && mouseX > posx - 20 && mouseX < posx + 20 && mouseY > posy - 20 && mouseY < posy + 20) {
      right = !right;
      up = !up;
      time += 1000;
    }
  }
  public void display() {
    ellipseMode(CENTER);
    pushMatrix();
    translate(posx, posy);
    if (right != false && up != true) {
      rotate(radians(-45.0));
    }
    if (right != true && up != true) {
      rotate(radians(-135.0));
    }
    if (right != false && up != false) {
      rotate(radians(-315.0));
    }
    if (right != true && up != false) {
      rotate(radians(-225.0));
    }
    noFill();
    stroke(0, 100, 0);
    strokeWeight(3);
    ellipse(0, 0, 40, 40);
    //Head
    ellipse(20, 0, 20, 20);
    //Tail
    fill(0, 100, 0);
    ellipse(-20, 0, 10, 10);
    noFill();
    stroke(0, 150, 0);
    ellipse(0, 0, 30, 30);
    //Head
    ellipse(20, 0, 15, 15);
    stroke(0, 200, 0);
    ellipse(0, 0, 20, 20);
    //Head
    ellipse(20, 0, 10, 10);
    //Legs
    ellipse(20, -20, 5, 5);
    ellipse(-20, 20, 5, 5);
    ellipse(20, 20, 5, 5);
    ellipse(-20, -20, 5, 5);
    //White between circles
    stroke(255);
    ellipse(0, 0, 35, 35);
    ellipse(0, 0, 25, 25);
    ellipse(0, 0, 15, 15);
    noStroke();
    fill(255);
    ellipse(0, 0, 10, 10);
    popMatrix();
  }
}