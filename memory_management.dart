// 1️⃣ Stack vs Heap
// 2️⃣ Objects in Memory
// 3️⃣ Garbage Collection
// 4️⃣ Memory Leaks in Flutter
// 5️⃣ const vs final memory optimization
// 6️⃣ Best practices

// 1️⃣ Stack vs Heap Memory
// Dart stores data in two main memory areas.

// Stack

// stores :
// function calls
// local variables
// primitive values

// exa :
// void main() {
//   int x = 5;
// }

// memory
// stack ---- x -> 5

// Heap
// Heap stores objects
// class Person {
//   String name;
//   Person(this.name);
// }

// void main(){
//   Person p = Person("Alice");

// }

// stack
// -----
// p -> reference

// Heap
// -----
// Person object
// name = "Alice"

// stack → reference
// heap → actual object

// 2️⃣ Objects and References

class User {
  String name;

  User(this.name);
}

// void main(){
//   User u1 = User("John");
//   User u2 = u1;
// }

// Memory

// stack
// -----
// u1 -> WeakReference
// u2 -> same reference

// Heap
// -----

// User(name: "John")

// Exampl of modification
// u2.name = "Mike";
// print(u1.name);  // Mike

// because both reference the same object

// 3️⃣ Garbage Collection (GC)
// dart automatically cleans unused objects

// exam
void main() {
  var list = [1, 2, 3];
}

// when function finishes
// list reference disappears

// Object becomes unreachable
// dart garbage collector removes it

// What GC does
// Finds objects with no references
// Deletes them from heap
// Frees memory

// this happens automatically
// you never manually free memory in dart

// 4️⃣ Memory Leaks in Flutter
// Even with GC, leaks can happen if reference are still held

// examples
// Streams
// Controllers
// AnimationControllers
// Timers

// if not disposed , they kepp memory alive.

// example leak
// TextEditingController controller = TextEditingController();

// if you dont dispose :
// controller.dispose();
// memory stays allocated.

// correct flutter usage
// class MyWidget extends StatefulWidget {}

// class _MyWidgetState extends State<MyWidget> {
//   final controller = TextEditingController();

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }

// this prevents memory leaks

// 5️⃣ const Memory Optimization
// const objects are stored once in memory.

// example
// const a = [1,2,3];
// const b = [1,2,3];
// Memory: both points to SAME object
// this reduce memory usage

// 6️⃣ String Memory Optimization
// Dart also interns strings

// example
var a = "hello";
var b = "hello";

// Both reference same memory 

// 7️⃣ Common Flutter Memory Problems 
// not disposing controllers 
// TextEditingController
// AnimationController
// ScrollController
// FocusNode
// StreamController

// Large List 

// example: 
// ListView with thousands of items 
// solution: 

// ListView.builder 
// Lazy loading reduces memory 

// 8️⃣ Widget Rebuild Memory 

// bad : 
// creating heavy objects in build()

// good : 
// initialize in initState()


// 9️⃣ Memory Lifecycle in Flutter 
// Create object
// Use object
// Remove references
// Garbage collector deletes it

// example : 
// Widget removed → State disposed → objects released

// 10️⃣ Real Flutter Memory Tips 
// Always 
// dispose controllers
// dispose animation controllers
// close streams
// cancel timers


// topics to cover :classObject Identity vs Equality vs HashCode