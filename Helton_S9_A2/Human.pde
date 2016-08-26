class Human {

  Human() {
  }

  void display(int x, int y, int h, color c, color c2, color c3) {
    rectMode(CENTER);
    noStroke();
    fill(c2);
    rect(x, y-h/2, 25, h);
    fill(c3);
    rect(x-5, y-h+5, 5, 5);
    rect(x+5, y-h+5, 5, 5);
    fill(c);
    rect(x, y, 50, h);
    rect(x-15, y+h, 5, h);
    rect(x+15, y+h, 5, h);
  }

  void sleep() {
    fill(0);
    translate(0, 0);
    rect(0, 0, 1000, 1000);
  }
}