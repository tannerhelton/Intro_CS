import processing.video.*;
Movie movie;
void setup() {
  size(640, 360);
  frameRate(30);
  movie = new Movie(this, "skill.mp4");
  movie.speed(4.0);
  movie.loop();
}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  image(movie, 0, 0);
  movie.speed(map(mouseX, 0, width, 0, 8));
}