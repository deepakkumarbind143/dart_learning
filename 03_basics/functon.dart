//Basic Function Structure
//A function needs a Return Type, a Name, and Parameters.

// import 'dart:async';

// int addnumber(int a, int b) {
//   return a + b;
// }

// int add(int a, int b) => a + b;
// //functio invoke

// //Named Parameters (The "Flutter Style")
// void greet({required String name, int age = 0}) {
//   print('hello $name, you are $age year old');
// }

// void main() {
//   print(addnumber(2, 4));

//   greet(name: "myname", age: 10);
// }

//============anonymous function =========
//function without name also known as arrow function

// var myfun = (msg) => print(msg);

// void main() {
//   myfun("hello");
// }

int add() {
  return 5 + 4;
}

void main() {
  print(add());
}
