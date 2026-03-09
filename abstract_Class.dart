// An abstract class is a class that cannot be instantiated.
// It is used as a blueprint for other classes.

// example

// abstract class Animal {
//   void makeSound();
// }

// here:
// Animal is abstract
// you cannot create Animal()

//Invalid:
//  Animal a = Animal();

// why Abstract class exist
// they define required behavior for child classes.
// example

//abstract class Animal{
//void makeSound();
//Now any class that extends it must implement makeSound()
//}

// Implement Abstract class
// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print("Bark");
//   }
// }

// class cat extends Animal {
//   @override
//   void makeSound() {
//     print("meow");
//   }
// }

// void main() {
//   Dog dog = Dog();
//   dog.makeSound();
// }

// Abstract Class Can Have Normal Methods
// Abstract classes can contain both abstract and concrete methods

abstract class Animal {
  void makeSound();

  void sleep() {
    print("sleeping");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("i am not sparrow");
  }
}

// void main() {
//   sparow s = sparow();
//   s.makeSound();
//   s.sleep(); // here i accessed the abstract class method
// }

// . Why do it this way? (The Project Benefit)
// You might wonder: "Why not just make a normal Animal class?"

// In a large project, abstract classes act as a Contract.

// Consistency: You guarantee that every animal in your app will have a makeSound() method, even if they sound different.

// Code Sharing: You only have to write the sleep() logic once. Every animal you ever create will automatically know how to sleep without you rewriting that code.

// Using the "Abstract" Type
// Even though you can't create an Animal object, you can still use Animal as a Type.
//  This is a powerful trick called Polymorphism.

void startAnimalDay(Animal animal) {
  animal.makeSound();
  animal.sleep();
}

void main() {
  // You can pass a Dog or a Cat into a function that expects an Animal
  startAnimalDay(Dog());
}

// many flutter example are 
// Widget
// State
// RenderObject

