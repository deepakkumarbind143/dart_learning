//## enum (enumerations)
// Enum = a type with fixed constant values.

// syntax

// enum Status { loading, success, error }

// Now use it:
Status currentStatus = Status.loading;

// Using Enum in Condition

// void main() {
//   // Using Enum in Condition
//   if (currentStatus == Status.loading) {
//     print("Loading...");
//   }

//   // Loop Through Enum

//   for (var s in Status.values) { // value to get all values
//     print(s);
//   }
// }

// Modern Dart allows enums to have:

// Properties
// Constructors
// Methods
// Override toString()
// Implement interfaces

//#1 Enum With Properties
enum Status {
  loading("Loading"),
  success("Sucess!"),
  error("Something went wrong");

  final String message;

  const Status(this.message);
}

// The Values: pending, shipped, and delivered are the instances.

// The Constructor: const OrderStatus(this.message) allows you to pass a specific string to each instance when it's created.

// The Field: final String message stores that string so you can access it later (e.g., OrderStatus.pending.message).

//#2 enum with multiple properties

// enum UserRole {
//   admin("Admin", 2),
//   user("user", 3),
//   guest("Guest", 1);

//   final String label;
//   final int level;

//   const UserRole(this.label, this.level);
// }

// void main() {
//   print(UserRole.admin.label);
// }

//#3 Enum with methods

enum PaymentStatus {
  pending,
  completed,
  failed;

  // get is used to create a computed property.
  bool get isSuccess => this == PaymentStatus.completed;
  // "Create a property called isSuccess that returns true if this specific status happens
  //to be completed, otherwise return false."
}

// The get keyword (The Getter)
// In Dart, get is used to create a computed property. It looks like a variable when you use it, but it actually runs a small piece of code.

// Why use it? So you don't have to call it like a function isSuccess(). You just write status.isSuccess.

// The "How": It "gets" a value based on the current state of the object.

// void main() {
//   if (PaymentStatus.completed.isSuccess) {
//     print("Payment Ok");
//   } else {
//     print("failed the payment");
//   }
// }

//#4 using switch with enum

enum OrderStatus { pending, shipped, delivered }

void handleStatus(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print("still waiting");
      break;

    case OrderStatus.shipped:
      print("on the way");
      break;

    case OrderStatus.delivered:
      print("delivered succesfully");
      break;
  }
}

// Enums make switch safer.

// If you forget one case, Dart warns you.

// void main() {
//   handleStatus(OrderStatus.delivered);
// }

//#5 Oerride toString()

enum UserRole {
  admin,
  user,
  guest;

  @override
  String toString() => name.toUpperCase();
}

// void main() {
//   print(UserRole.admin); //ADMIN
// }

//# enum implementing interface

abstract class Describeble {
  String describe();
}

enum ColorType implements Describeble {
  red,
  blue;

  @override
  String describe() => "this is  $name";
}

// The abstract Class (The Rulebook)
// An abstract class is a class that cannot be created on its own. You can't do var d =
// Describable(); because it’s not a "thing"—it’s an idea.

// The Purpose: It defines a "requirement." By saying String describe(); without any code
//  inside {}, you are telling the rest of your app: "Anything that wants to be 'Describable
//  ' MUST have a function called describe that returns a String."

// Analogy: Think of it like a Job Description. It lists the duties (methods) but isn't a person (object) itself.

// The implements Keyword (The Contract)
// When you say enum ColorType implements Describable, you are signing a legal contract.

// The Commitment: You are promising the Dart compiler: "I promise that ColorType will include every single method mentioned in the Describable rulebook."

// Why use it? It allows you to treat different enums or classes as the same "type." If you have 10 different enums that all implement Describable, you can put them all in one list and call .describe() on them without caring which one is which.

// practice 2

// enum ApiState {
//   loading("data is loading"),
//   success("data loaded successfully"),
//   error("something is wrong please try again");

//   final String message;
//   bool get isError => this == APiState.error;
//   bool get isLoading => this == APiState.loading;

//   const APiState(this.message);
// }

// void main() {
//# this is wrong way
//   if (APiState.loading.isLoading) {
//     print(APiState.loading.message);
//   } else if (APiState.error.isError) {
//     print(APiState.error.message);
//   } else {
//     print(APiState.success.message);
//   }

//# this is right
// ApiState state = ApiState.loading;
// if(state.isLoading){
//   print(state.message);
// }
// }

// enum ScreenType {
//   home("/"),
//   profile("/profile"),
//   setting("/settings");

// final String message;

//   String get routeName => message;

//  const ScreenType(this.message);
// }

// practice 1
enum TrafficLight {
  red(20), // no need of  "red"
  yellow(50), //"yellow" no need
  green(20); //"green" // no need

  // final String message; // no need of this
  final int duration;

  bool get canGo => this == green; // you can just write green

  const TrafficLight(this.duration); //this.message no need
}

void main() {
  // print(TrafficLight.yellow.duration);
  // it can be acess like this also

  print(TrafficLight.red.name);
  print(TrafficLight.red.duration);

  TrafficLight status = TrafficLight.green;

  if (status.canGo) {
    print("you can go");
  } else {
    print("you cant go");
  }
}


/* this is some way of  shortcut to acces of item
.name
.index
.values

*/
 