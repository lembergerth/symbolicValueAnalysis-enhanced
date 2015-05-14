extern __nondet_int();

int main() {
  int a = __nondet_int();
  int b;

  if (a >= 0) {
    b = a;

  } else {
    b = a + 1;
  }

  if (b < a) {
ERROR:
    return -1;
  }
}
