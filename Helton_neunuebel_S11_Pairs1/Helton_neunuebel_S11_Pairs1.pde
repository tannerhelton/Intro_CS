//Tanner Helton and Mitchell Neunuebel
//Create arra for images
PImage[] images = new PImage[5];
void setup() {
  //Setup size and set image array to image files
  size(500, 500);
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage("img" + i + ".jpg");
  }
}
//Declare variables for the project
int currentImage = 0;
int nextImage = 1;
long ellapsed = 0;
float tint = 0;
boolean startTint = false;
void draw() {
  //Increase time by 1 every frame
  ellapsed += 1;
  //Every 5 seconds start to tint
  if (ellapsed == 300) {
    ellapsed = 0;
    //Begin the tint
    startTint = true;
  }
  //The if statement acts as a function to tint the images
  if (startTint == true) {
    if (tint < 255) {
      tint += 1;
    } else {
      startTint = false;
    }
  }
  //Draw the current image and next image
  if (tint < 255) {
    noTint();
    image(images[currentImage], 0, 0);
    tint(255, 255, 255, tint);
    image(images[nextImage], 0, 0);
  } else {
    //Reset tint to 0
    tint = 0;
    //Update current image and next image
    if (currentImage < 4) {
      currentImage += 1;
    } else {
      currentImage = 0;
    }
    if (currentImage < 4) {
      nextImage = currentImage + 1;
    } else {
      nextImage = 0;
    }
  }
}