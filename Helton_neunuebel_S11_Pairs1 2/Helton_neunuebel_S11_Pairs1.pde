//Tanner Helton and Mitchell Neunuebel
PImage[] images = new PImage[5];
void setup() {
  size(500, 500);
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage("img" + i + ".jpg");
  }
}
int currentImage = 0;
long ellapsed = 0;
void draw() {
  ellapsed += 1;
  if (ellapsed == 300) {
    ellapsed = 0;
    if (currentImage < 4) {
      currentImage += 1;
    } else {
      currentImage = 0;
    }
  }
  image(images[currentImage], 0, 0);
}