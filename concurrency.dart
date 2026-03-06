// Concurrency
// Concurrency = multiple tasks making progress at the same time.
// But not necessarily running at the exact same moment.

// think like this
// You cook food
// You check your phone
// You stir the pan
// You reply to message
// You are doing many tasks, but one at a time very quickly.

import 'dart:async';
import 'dart:ffi';

Future<void> task1() async {
  await Future.delayed(Duration(seconds: 2));
  print("Task 1 done");
}

Future<void> task2() async {
  await Future.delayed(Duration(seconds: 1));
  print("Task 2 done");
}

// void main() async {
//   task1();
//   task2();
// }

// output
// Task 2 done
// Task 1 done
// What happened?
// Dart scheduled both tasks and switched between them.
// This is concurrency.

// What is Parallelism
// Parallelism = tasks running literally at the same time.
// example , Now they run simultaneously
// CPU Core 1 → Task A
// CPU Core 2 → Task B

// In Dart, Parallelism = Isolates.
// Main Isolate
// Worker Isolate
// Both run on separate threads.

//## Dart Concurrency Model
// dart used something called =>Event Loop

// Struct
// Main Thread
//      │
//      ▼
// Event Loop
//      │
//  ┌───┴─────┐
// Microtask Queue
// Event Queue

// Tasks are processed like:
// 1. Run sync code
// 2. Run microtasks
// 3. Run event tasks
// 4. Repeat

//## simple example
// void main(){
//   print("Strat");

//   Future(() => print("future"));
//   print("End");
// }

// output
// Start
// End
// Future

// Because:
// Future => event queue
// it runs after main code

//## Microtask vs Event Queue
// Microtasks have higher priority.

void main() {
  print("Start");
  scheduleMicrotask(() => print("Microtask"));
  Future(() => print("Future"));
  print("End");
}

// output
// Start
// End
// Microtask
// Future

// Execution order:
// Sync code
// Microtasks
// Event queue

//# Concurrency in Flutter
// Flutter uses concurrency everywhere:
// Network calls
// Animations
// Gesture handling
// Streams
// Timers
// Database calls

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data";
} //The UI does not freeze because Dart runs it concurrently.

// Main Isolate
// │
// ├─ UI rendering
// ├─ Gesture detection
// ├─ API calls (Future)
// ├─ Streams
// └─ Event loop

// Worker Isolate
// │
// ├─ Image compression
// ├─ JSON parsing
// ├─ ML inference

// 11. The Skill Most Developers Miss

// To master Dart/Flutter concurrency you should understand:

// 1️⃣ Event Loop
// 2️⃣ Microtask Queue
// 3️⃣ Futures
// 4️⃣ Streams
// 5️⃣ Isolates

// When you understand these, you can build highly performant Flutter apps.
