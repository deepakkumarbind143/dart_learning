// Isolate

// The Problem: Single Thread
// Dart normally runs on one thread.

// void main() {
//   print("Start");

//   for (int i = 0; i < 1000000000; i++) {}

//   print("End");
// }

// what happens:
// Start
// (wait... app freezes)
// End

// In Flutter this causes:
// UI freeze
// Jank
// Dropped frames

// Futures Do NOT Fix CPU Work
// Many beginners think Future solves this.
// Because async/await only helps with I/O work:
//like :
// Network
// File reading
// Database
// Timers

//## Dart uses Isolates instead of threads.

// Thread → shared memory
// Isolate → separate memory

//Each isolate has:
// ✔ its own memory
// ✔ its own event loop
// ✔ runs in parallel

// Simple Isolate Example

import 'dart:async';
import 'dart:isolate';

import '02_basics/if_else.dart';

void heavyTask(SendPort sendPort) {
  int sum = 0;

  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }

  sendPort.send(sum);
}

// void main() async {
//   final receivePort = ReceivePort();

//   await Isolate.spawn(heavyTask, receivePort.sendPort);
//   receivePort.listen((message) {
//     print("Result: $message");
//     receivePort.close();
//   });
// }

//what happenend beshind the scenes
// 1
// main isolate starts
// 2
// Isolate.spawn()  => Creates new isolate (parallel worker)
// 3
// heavyTask runs in another isolate
// 4
// result is sent back using  : Sendport -> ReceivedPort
// Communication diagram:
// Main Isolate
//      │
//      │ spawn
//      ▼
// Worker Isolate
//      │
//      │ sendPort.send()
//      ▼
// ReceivePort.listen()

//why ports are needed => Because isolates cannot share memory.
// So communication uses message passing.
// using  => SendPort,
// ReceivePort

// Flutter provides helper: Compute()

//## Simplest Isolate API : Isolate.run()

// void main() async {
//   var result = await Isolate.run(() {
//     int sum = 0;
//     for (int i = 0; i < 10000000; i++) {
//       sum += i;
//     }
//     return sum;
//   });
//   print(result);
// }

// Memory Rule (Important)
// Isolates cannot share objects.
// this will not work : => List, Map, custom Object

// Instead Dart copies the data.
// alloed messages:
// int
// double
// String
// List
// Map
// SendPort

//## . Real Flutter Architecture
// Large apps often use:
// Main Isolate → UI
// Worker Isolate → background tasks
// example
// UI
// │
// ├─ Network
// ├─ JSON parsing (Isolate)
// ├─ Image compression (Isolate)
// └─ Streams for UI updates


// Create an isolate that:

// 1️⃣ calculates factorial of a number
// 2️⃣ sends result back to main isolate
// solution 

// void main() async {
//   var result = await Isolate.run(() {
//     int factorial = 1;
//     for (int i = 1; i <= 5; i++) {
//       factorial = factorial * i;
//     }
//     return factorial;
//   });

//   print("Factorial: $result");
// }

// 3 extremely important Flutter isolate patterns

// 1️⃣ compute() (Flutter standard)
// 2️⃣ Isolate.run() (modern Dart)
// 3️⃣ Long-living worker isolates (used in large apps)