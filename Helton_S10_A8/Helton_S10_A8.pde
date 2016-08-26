//Tanner Helton
Car[] cars = new Car[100];
void setup() {
  size(200, 200);
  for (int i = 0; i < cars.length; i++) {
    cars[i] = new Car(color(i*2), 0, i*2, i/20.0);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < cars.length; i++) {
    cars[i].move();
    cars[i].display();
  }
}