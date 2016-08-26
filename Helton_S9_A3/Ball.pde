class Ball {
  float x, y, h, speed, gravity;
  color c;
  Ball(float xt, float yt, float ht, float speedt, float gravityt, color ct) {
    x = xt;
    y = yt;
    h = ht;
    speed = speedt;
    gravity = gravityt;
    c = ct;
  }

  void display() {
    fill(c);
    stroke(0);
    ellipse(x, y, h, h);
  }

  void move() {
    y += speed;
    speed += gravity;
  }
  void bounce() {
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
}