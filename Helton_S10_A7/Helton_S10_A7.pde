//Tanner Helton
Snake snake;
void setup() {
  size(500, 500);
  //Input goes as follows (Red, Green, BLue, Size, Shape)
  //The shape can be square, ellipse, or long ellipse
  snake = new Snake(255, 0, 0, 90, "square");
}

void draw() {
  background(255);
  snake.display();
}