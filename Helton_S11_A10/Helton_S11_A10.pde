//--------
//The convolution matrix is making the image's threshold high and making it more grainy.
//--------
//Create the img and w variables, as well as the matrix
PImage img;
int w = 80;
float[][] matrix = {
  { -1, 2/5, -1 }, 
  { 1, 9, -1 }, 
  { -1, 5, -1 }
};

void setup() {
  size(500, 500);
  img = loadImage("porsche.jpg");
}

void draw() {
  image(img, 0, 0);
  //Create the dimensions for the box
  int xstart = constrain(mouseX - w/2, 0, img.width);
  int ystart = constrain(mouseY - w/2, 0, img.height);
  int xend = constrain(mouseX + w/2, 0, img.width);
  int yend = constrain(mouseY + w/2, 0, img.height);
  int matrixsize = 3;

  //Call pixels and begin applying effects
  loadPixels();
  for (int x = xstart; x < xend; x++) {
    for (int y = ystart; y < yend; y++) {
      color c = convolution(x, y, matrix, matrixsize, img);
      int loc = x + y*img.width;
      pixels[loc] = c;
    }
  }
  updatePixels();
  stroke(0);
  noFill();
  //Draw the black rectangle
  rect(xstart, ystart, w, w);
}
color convolution(int x, int y, float[][] matrix, int matrixsize, PImage img) {
  //Initiate the variables
  float rtotal = 0.0;
  float gtotal = 0.0;
  float btotal = 0.0;
  int offset = matrixsize / 2;
  for (int i = 0; i < matrixsize; i++) {
    for (int j = 0; j < matrixsize; j++) {
      int xloc = x + j-offset;
      int yloc = y + j-offset;
      int loc = xloc + img.width*yloc;
      loc = constrain(loc, 0, img.pixels.length-1);
      rtotal += (red(img.pixels[loc]) * matrix[i][j]);
      gtotal += (green(img.pixels[loc]) * matrix[i][j]);
      btotal += (blue(img.pixels[loc]) * matrix[i][j]);
    }
  }
  rtotal = constrain(rtotal, 0, 255);
  gtotal = constrain(gtotal, 0, 255);
  btotal = constrain(btotal, 0, 255);
  //Reture the colors for each pixels
  return color(rtotal, gtotal, btotal);
}