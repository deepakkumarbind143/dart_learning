// What is a Stream?

// A Future gives one value in the future.
// A Stream gives multiple values over time.

// Stream → many values

// YouTube Live Chat
// Stock prices
// Button clicks
// GPS location updates

//* Data keeps coming.

import 'dart:async';

Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

//##Key keyword

//* yield // send value to the stream

// void main() async {
//   await for (int number in countStream()) {
//     print(number);
//   }
// }

//## Important Keywords

// async* //Used when a function returns a stream
// Stream<int> numbers() async*

// yield //Used to emit values

// await for //Used to listen to stream values
// await for (var value in stream)

//## Reactive Programming (Simple Meaning)

// means => Program reacts when data changes
// Stream → emits data
// Listener → reacts

// eg: We subscribe and get notified automatically.

//# Streams With listen()

// void main() {
//   Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5]);
//   stream.listen((value) {
//     print(value);
//   });
// }

//# 3 Types of Streams (Advanced but Important)  //These are used a lot in Flutter state management.
// Single Subscription Stream
// Broadcast Stream
// StreamController

// Next (VERY IMPORTANT for Flutter)
// 1️⃣ StreamController (very important)
// 2️⃣ Broadcast Streams
// 3️⃣ StreamBuilder (Flutter UI)
// 4️⃣ Reactive State Management

//# Stream Lifecycle => A stream has 3 possible events:
// 1️⃣ Data event
// 2️⃣ Error event
// 3️⃣ Done event

// Stream<int> numbers() async* {
//   yield 1;
//   yield 2;
//   yield 3;
// }

// Stream
//    ↓
// 1 (data)
// 2 (data)
// 3 (data)
// done

//# Listening to Streams Properly
// Using listen() gives more contro

// void main() {
//   Stream<int> stream = Stream.fromIterable([1, 2, 3]);
//   stream.listen(
//     (data) => print("Data: $data"),
//     onError: (Error) => print("Error: $Error"),
//     onDone: () => print("Stream closed"),
//   );
// }

//o/p

// Data: 1
// Data: 2
// Data: 3
// Stream closed

// Creating Streams (3 Common Ways)

// Method 1 — async* generator
// Stream<int> number() async* {
//   yield 1;
//   yield 2;
//   yield 3;
// }

// Method 2 — fromIterable
Stream<int> stream = Stream.fromIterable([1, 2, 3]);

// Method 3 — Periodic stream
// Stream<int> stream = Stream.periodic(Duration(seconds: 1), (count) => count);

// void main() {
//   Stream.periodic(Duration(seconds: 1), (count) => count).listen((value) {
//     print(value);
//   });
// }

//# StreamController (EXTREMELY IMPORTANT) => A StreamController controls a stream manually.
// Controller → pushes data → Stream → Listener

// void main() {
//   StreamController<int> controller = StreamController();
//   controller.stream.listen((data) {
//     print("Received: $data");
//   });

//   controller.add(1);
//   controller.add(2);
//   controller.add(3);
//   controller.close();  //Always close streams.
// // Prevents memory leaks

// }

//# Stream Transformations (Reactive Programming)
// Streams can transform data.

// Example using map.
// void main() {
//   Stream<int> number = Stream.fromIterable([1, 2, 3]);
//   number.map((number) => number * 10).listen((value) {
//     print(value);
//   });
// }

// Filtering Stream Data
// using where

// void main() {
//   Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

//   stream.where((num) => num.isEven).listen((value) {
//     print(value);
//   });
// }

// Filtering Stream Data
//imagine live search
// user types:
// F
// Fl
// Flu
// Flut
// Flutt
// Flutter
// Instead of calling API every time, stream reacts.

Stream<String> searchInput() async* {
  yield "F";
  yield "Fl";
  yield "Flu";
  yield "Flutt";
  yield "Flutter";
}

// void main() async {
//   await for (var text in searchInput()) {
//     print("Searching for $text");
//   }
// }
// o/p
// Searching for F
// Searching for Fl
// Searching for Flu
// Searching for Flutt
// Searching for Flutter

// single vs Broadcast stream
// default listener => Only one listener allowed.
// Only one listener allowed.

//# Broadcast stream
//allow multiple listeners

// void main() {
//   StreamController controller = StreamController.broadcast();

//   controller.stream.listen((data) => print("Listener1 $data"));
//   controller.stream.listen((data) => print("listener2 $data"));
//   controller.add(1);
//   controller.close();
// }

// flutter widget for this
// StreamBuilder

// example Concept
// Stream → new data → UI rebuild

Stream<int> number() async* {
  for (int i = 1; i <= 20; i++) {
    await Future.delayed(Duration(milliseconds: 500));

    if (i % 3 == 0) {
      yield i;
    }
  }
}

void main() async {
  await for (var value in number()) {
    print(value);
  }
}

// StreamBuilder
// Reactive UI
// How Flutter apps update automatically
// BLoC architecture
