#include <iostream>
#include <boost/thread/thread.hpp>

void hello() {
  std::cout << "Hello World" << std::endl;
}

int main() {
  boost::thread t(hello);
  t.join();
  return 0;
}
