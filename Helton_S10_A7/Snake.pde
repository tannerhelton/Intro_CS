class Snake {
  int[] xpos = new int[50];
  int[] ypos = new int[50];
  int r, g, b, s;
  String shape;
  Snake(int rt, int gt, int bt, int st, String shapet) {
    for (int i = 0; i < xpos.length; i++) {
      xpos[i] = 0;
      ypos[i] = 0;
      r = rt;
      g = gt;
      b = bt;
      s = st;
      shape = shapet;
    }
  }

  void display() {
    for (int i = 0; i < xpos.length - 1; i++) {
      xpos[i] = xpos[i + 1];
      ypos[i] = ypos[i + 1];
    }

    xpos[xpos.length - 1] = mouseX;
    ypos[ypos.length - 1] = mouseY;

    for (int i = 0; i < xpos.length; i++) {
      noStroke();
      rectMode(CENTER);
      fill(r - i * 5, g - i * 5, b - i * 5);
      if (shape == "ellipse") {
        ellipse(xpos[i], ypos[i], s, s);
      } else if (shape == "square") {
        rect(xpos[i], ypos[i], s, s);
      } else if (shape == "longEllipse") {
        ellipse(xpos[i], ypos[i], s * 1.5, s);
      }
    }
  }
}