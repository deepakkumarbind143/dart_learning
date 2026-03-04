// Generics let you write flexible and reusable code
// that works with different data types safely.

// Instead of hardcoding a type, you use a placeholder like
// "T"

//#1 generic
class Box<T> {
  T value;

  @override
  String toString() => "Box contains: $value"; // this line needed to print

  Box(this.value);
}

// void main() {
//   Box<int> intBox = Box(10);
//   Box<String> stringBox = Box("hello");
//   print(stringBox);
//   print(intBox);
// }

// What is <T>?
// T is just a name.

// But convention is:
// T → Type
// E → Element
// K → Key
// V → Value

//#2 generic in list

// List<String>  //It means: "This list can only store String."

//#3 generic function

T getFirst<T>(List<T> items) {
  return items.first;
}

// void main() {
//   print(getFirst([1, 2, 3, 4, 5]));
//   print(getFirst(["A", "B"]));
// }

//#4 genenric method in class

class Printer {
  void printValue<T>(T value) {
    print(value);
  }
}

// void main() {
//   Printer().printValue<int>(10);
//   Printer().printValue<String>("Hello");
// }

//#5 multiple generic types

class Pair<K, V> {
  K key;
  V value;

  @override
  String toString() => "${this.key} ${this.value}";
  Pair(this.key, this.value);
}

// void main() {
//   Pair<String, int> student = Pair("john", 90);
//   print(student);
// }

//#6 Bounded generics
// sometimes you want to restric type

class NumberBox<T extends num> {
  T value;

  @override
  String toString() => "${this.value}";

  NumberBox(this.value);
}

// void main() {
//   NumberBox<int> number = NumberBox(50);
//   print(number);
//   print(NumberBox<int>(10));
//   print(NumberBox<double>(5.5));
// }

// Not allowed: Because String is not num.

// NumberBox<String>("Hello"); // ❌ Error

//# solution 1
class Storage<T> {
  T value;

  // REMOVED the <T> here so it uses the class's T
  T getValue() {
    return value;
  }
  // Senior lesson:
  // Classes should return data, not print it.

  Storage(this.value);
}

// void main() {
//   Storage<int> marks = Storage(50);
//   marks.getValue();
// }

//# solution 2

T getLast<T>(List<T> items) {
  return items.last;
}

// solution 3
class Response<T> {
  T data;
  String message;
  bool isSuccess;

  Response({
    required this.data,
    required this.message,
    required this.isSuccess,
  });
}


// Never use raw generic types like:
// List
// Map
// Storage
// Future

// Always use:
// List<String>
// Map<String, int>
// Storage<int>
// Future<String>

