int[] a1 = {1, 3, 5};
int[] a2 = {2, 4, 6};

void setup() {
  if (a1.length == a2.length || a1.length == a2.length+1) {
    printArray(zip(a1, a2));
  } else {
    print("Differing array lengths");
  }
}

int[] zip(int[] b1, int[] b2) {
  int x = 0;
  int[] ret = new int[a1.length + a2.length];
  int y = 0;
  for (int i = 0; i < b1.length + b2.length; i++) {
    if (i % 2 == 0) {
      ret[i] = b1[x];
      x += 1;
    } else {
      ret[i] = b2[y];
      y += 1;
    }
  }
  return ret;
}