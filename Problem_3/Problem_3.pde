void setup() {
  int[] arr = {1, 2, 2, 4, 1, 6};
  println(sum(arr));
}
int sum(int[] x) {
  int y = 0;
  for (int i = 0; i < x.length; i++) {
    y += x[i];
  }
  return y;
}