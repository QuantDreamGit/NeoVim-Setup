#include <iostream>

// Template function to compute fibo
template <typename T> T fibo(T n) {
  if (n <= 1)
    return n;
  return fibo(n - 1) + fibo(n - 2);
}

int main() {
  int const a = 1;
  int b = 1;

  // This is an error that LSP should detect!
  // a = 2;

  // Add breakpoint here!
  std::cout << "Hello, World!";

  // Another one, here :)
  b += a;
  return 0;
}
