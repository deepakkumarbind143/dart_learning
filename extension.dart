// They let you add new functionality to existing classes
// without modifying them.

// basic syntax

// extension ExtensionName on  TypeName {
//   // new methods or getters here
// }
//1 extension on string
import 'enums.dart';

// extension StringExtension on String {
//   String get capitalize {
//     return this[0].toUpperCase() + substring(1);
//   }
// }

// void main() {
//   print("hello".capitalize);
// }

//2 Extension on int
// extension IntExtension on int {
//   bool get isEvenNumber => this % 2 == 0;
// }

// void main() {
//   print(4.isEvenNumber);
// }

//Extension with Method (Not Getter)

// extension ListExtension on List {
//   void printEach() {
//     for (var item in this) {
//       // "this" refers to the object you're calling the extension on.
//       print(item);
//     }
//   }
// }

// void main() {
//   [1, 2, 3].printEach();
// }

//4 extension on your own class
class User {
  final String name;
  User(this.name);
}

extension UserExtension on User {
  void greet() {
    print("hello $name");
  }
}

// void main() {
//   User("John").greet();
// }

// extension ContextExtension on BuildContext {
//   void showMessage(String message) {
//     ScaffoldMessenger.of(this)
//         .showSnackBar(SnackBar(content: Text(message)));
//   }
// }

// ScaffoldMessenger.of(this) // Find the manager
//     .showSnackBar(         // Tell the manager to show something
//         SnackBar(          // Create the "Alert Box"
//             content: Text(message) // Put the text inside it
//         )
//     );

// How to use it
// @override
// Widget build(BuildContext context) {
//   return ElevatedButton(
//     onPressed: () {
//       // Look how short this is!
//       context.showMessage("Payment Successful!");
//     },
//     child: Text("Pay Now"),
//   );
// }

//5 extension on enums
extension TrafficLightExtension on TrafficLight {
  String get displayText {
    switch (this) {
      case TrafficLight.red:
        return "stop";
      case TrafficLight.yellow:
        return "Ready";
      case TrafficLight.green:
        return "Go";
    }
  }
}

// void main() {
//   print(TrafficLight.green.displayText);
// }

//1 solution
extension StringExtension on String {
  bool get isEmail =>contains("@") && contains(".");
} //No need to write this. unless necessary.

// void main() {
//   print("test@gmail.com".isEmail);
// }


//2 solution

extension IntExtension on int {
  int get square => this * this;
}

// void main() {
//   print(5.square);
// }

//3 solution

extension ListExtension on List<String> {
 String get toSentence  => join(" ");
}