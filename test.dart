// anaonymous function
var myfun = (int a, int b) {
  return a + b;
};

//arrow function can have name if no name and with {} than it is called anonymous
var myfun2 = (int a, int b) => a + b;

void main() {
  print(myfun2(4, 6));
}
