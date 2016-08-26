class Face {
  PImage img;
  float imgx, imgy;
  float rotation, size, rotation1;
  Face(String filename, float imgx_, float imgy_, float rotation_, float size_) {
    img = loadImage(filename);
    imgx = imgx_;
    imgy = imgy_;
    rotation = rotation_;
    size = size_;
  }

  void display() {
    translate(imgx, imgy);
    imageMode(CENTER);
    rotate(rotation1);
    image(img, 0, 0, size, size);
  }
  void move() {
    rotation1 += rotation;
    imgx += 5;
    if (imgx > width) {
      imgx = 0;
    }
  }
}