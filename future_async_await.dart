// Future = value that will come later

// Future<String> fetchData() {
//   return Future.delayed(Duration(seconds: 2), () => "Data Loaded");
// }

// void main() {
//   fetchData().then((data) {
//     print(data);
//   });
// }

// Problem With .then()

// Code becomes messy.

// async / await
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data Loaded";
}

// void main() async {
//   String data = await fetchData();
//   print(data);
// }

//  async
// This function will work with Future

// await
// Wait here until Future finishes

// String data = await fetchData();  // it means
// Stop here
// wait for data
// then continue

// Future<void> loadUser() async {
//   var response = await http.get(
//     Uri.parse("https://api.example.com/user"),
//   );

//   print(response.body);
// }

// call API
// ↓
// wait for server
// ↓
// response comes
// ↓
// continue code

//## Error Handling with async

// Future<void> fetchuser() async {
//   try {
//     var data = await fetchData();
//     print(data);
//   } catch (e) {
//     print("Error: $e");
//   }
// }

//## Future type
// There are 3 common types
// Future<String>
// Future<int>
// Future<void>

//## Behind The Scene

// When you use async/await Dart uses:
// Event Loop
// Microtask Queue
// Event Queue

// Dart doesn't block the thread
// It schedules tasks

// Future<void> test() async {
//   print("A");

//   await Future.delayed(Duration(seconds: 2));

//   print("B");
// }

// void main() {
//   print("Start");

//   test();

//   print("End");
// }

// Start
// A
// End
// B

// ⚡ await pauses only the async function, not the whole program.

// 1. The Core Components
// The Event Loop is a continuous loop that checks two specific "to-do lists" (Queues) to see if there is work to be done.

// A. The Microtask Queue
// This is the High-Priority list.

// What it's for: Very short, internal actions that need to happen right after the current code finishes, but before the screen repaints.

// The Rule: The Event Loop will not look at anything else until the Microtask Queue is completely empty.

// B. The Event Queue (Future Queue)
// This is the Standard-Priority list.

// What it's for: External events like I/O, timers, mouse clicks, or Futures.

// The Rule: If a new Microtask appears while the Event Loop is working through this queue, it will stop everything to go finish the Microtask first.

// 2. How the Loop Works (The Priority Order)
// When you run a Dart program, it follows this strict hierarchy:

// Main Execution: It runs all the code inside your main() function (Synchronous code).

// Microtask Check: Once main is done, it clears the entire Microtask Queue.

// Event Check: It picks the first item in the Event Queue and runs it.

// Repeat: After that one item is done, it goes back to Step 2 (checking Microtasks again).

// Crucial Concept: One "rotation" of the Event Loop only handles one event from the Event Queue, but it will handle all pending Microtasks.
