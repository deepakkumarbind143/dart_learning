//# What is a Class?
// A class is a blueprint for creating objects.

// class Person {
//   String? name;
//   int? age;

//   // Person(this.name, this.age);

//   void introduce() {
//     print("hi, I'm $name and I'm $age years old.");
//   }
// }

// # What is an Object?
// Object = Instance of a class.

// void main() {
//   Person p1 = Person();// now p1 is a real object
//   p1.name = "john";
//   p1.age = 25;

//   p1.introduce();
// }

//# constructor
// Constructor runs when object is created

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print(" Hi I'm $name and I'm $age years old.");
  }
}

// void main() {
//   Person p1 = Person("John", 25);
//   p1.introduce();
// }

//## The 4 OOP Principles

//# Encapsulation
// Hiding internal details and protecting data.

class BankAccount {
  double _balance = 0; //private

  void deposite(double amount) {
    _balance += amount;
    // print(_balance);
  }

  double get balance => _balance;
}

// In Dart:

// "_" makes it private (inside file only)

// User cannot directly modify balance.

// This protects data 🔐

// void main() {
//   BankAccount b1 = BankAccount();

//   b1.deposite(555);
//   b1.deposite(235);
// }

//# Abstraction
// Show only important things, hide complex logic

class Car {
  void Start() {
    _igniteEngine();
  }

  void _igniteEngine() {
    print("Engine started");
  }
}

// void main() {
//   Car c1 = Car();
//   c1.Start(); // they dont care how engine works internally
// }

//# Inheritance
// One class can inherit another

class animals {
  void eat() {
    print("Eating...");
  }
}

class Dog extends animals {
  void bark() {
    print("Woof");
  }
}

// void main() {
//   Dog d1 = Dog();
//   d1.bark();
//   d1.eat(); // dog inherits eat()
// }

//# polymorphism
// Same method name, different behavior.

class Animals {
  void sound() {
    print("Animal sound");
  }
}

class dog extends Animals {
  @override
  void sound() {
    // super.sound(); // it force parant sound
    print("Woof");
  }
}

void main() {
  Animals a = dog();
  a.sound();
}
