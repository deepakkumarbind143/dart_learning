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

//# enum qith multiple properties
