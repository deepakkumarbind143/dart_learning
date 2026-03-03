//## constructor
// What is a Constructor?

// A constructor is a special function that runs when you create an object.

// It has:
// Same name as class
// No return type

// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);
// }

// void main() {
//   Person p1 = Person("deepak", 26); // this will run the constructor

// }

//# Types of Constructors in Dart

// Default constructor
// Parameterized constructor
// Named constructor
// Factory constructor (advanced)
// Const constructor (Flutter important)

//# positional Parameters

// in positional parammeters order matter
// void main() {
//   Person("john", 24); // this is write order
//   // Person(23, "deepak") // this is wrong order
// }

//# Named Parameter
// Named parameters use {}.
// class Person {
//   String name;
//   int age;

//   Person({required this.name, required this.age});
// }

// void main(){
//   Person(name: "deepak", age: 23);// in named parameter order does not matters
//   // Person( age: 23, name: "deepak");// both will work

// }

//# optional named parameters

// class Person {
//   String name;
//   int? age; //to allow nullable

//   Person({required this.name, this.age});
// }

// void main(){
//   Person(name: "deepak");//in this age is optional
// }

//# Default values
// class Person {
//   String name;
//   int age;

//   Person({required this.name, this.age = 18});
// }

// void main(){
//   Person(name: "deepak"); // here age will become 18;
// }

//## named Constructor
//  You can create multiple constructors.

class Person {
  String name;
  int age;

  Person(this.name, this.age); // constructor

  Person.greet() : name = "Guest", age = 0; // constructor
}

void main() {
  Person p1 = Person("john", 23);
  Person p2 = Person.greet();
  print(p2.name); // this is the way to acces constructor items
}

//# const constructors
// it is immutable
//Only ONE object is created , its like reference

// Step 4 — Important Rule

// For a class to have const constructor:

// All fields must be final

// Constructor must be const

// Values must be known at compile time

// This will FAIL:

// class Test {
//   int x; // ❌ not final
//   const Test(this.x);
// }

// Error.

// Super Important Interview Question

// What happens if you write:

// var p1 = Point(1, 2);
// var p2 = Point(1, 2);

// Even if constructor is const?

// Answer:

// Because you didn’t use const while creating,
// it behaves like normal constructor.

// To reuse memory, you must write:

// const Point(1, 2);

class Student {
  String name;
  int age;

  // 1️⃣ Normal constructor
  Student(this.name, this.age);

  // 2️⃣ Named constructor
  Student.guest() : name = "Guest", age = 0;

  // 3️⃣ Redirecting constructor
  Student.child(String name) : this(name, 10);

  // 4️⃣ Factory constructor
  factory Student.fromMap(Map<String, dynamic> data) {
    return Student(data['name'], data['age']);
  }

  // syntx of factory
  //   class ClassName {
  //   factory ClassName(parameters) {
  //     // logic
  //     return SomeObject;
  //   }
  // }

  //example

  // class Person {
  //   String name;

  //   Person._internal(this.name); // private normal constructor

  //   factory Person(String name) {
  //     return Person._internal(name);
  //   }
  // }
}
