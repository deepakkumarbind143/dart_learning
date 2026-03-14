// We’ll cover the core FP concepts:

// 1️⃣ First-Class Functions
// 2️⃣ Pure Functions
// 3️⃣ Immutability
// 4️⃣ Higher-Order Functions
// 5️⃣ Anonymous Functions (Lambdas)
// 6️⃣ Function Composition
// 7️⃣ Map / Where / Reduce / Fold

// 1️⃣ First-Class Functions   //In Dart, functions are values.

// that means you can
// store them in variables
// pass them as parameters
// return them from functions

// ex
// void greet() {
//   print("Hello");
// }

// void main() {
//   var sayHello = greet;

//   sayHello();
// }

// 2️⃣ Pure Functions  // purely depends on functional scope

// A pure function:
// ✔ always returns same output for same input
// ✔ does not modify external state
// ✔ no side effects

// ex
// int add(int a, int b){
//   return a + b;
// }

// 3️⃣ Immutability
// Functional programming prefers immutable data.

// meaning
// value cannot change after creation

// ex
// final name = "Alice";

// 4️⃣ Higher-Order Functions

// takes a function as argument
// OR
// returns a function

// ex
// void process(int number, Function action){
//   action(number);
// }

// void printNumber(int n){
//   print(n);
// }

// void main(){
//   process(5, printNumber);
// }

// 5️⃣ Anonymous Functions (Lambdas)
// instead of writing full function we use  arrow function

// ex

// void main() {
//   var number = [1, 2, 3];
//   number.forEach((n) => print(n));
// }

// 6️⃣ Map (Transform Data)
// map() transforms each element.

// 7️⃣ Where (Filtering)
// Filters elements.

// 8️⃣ Reduce
//combines list values

// ex

// void main() {
//   var number = [1, 2, 3, 4];
//   var sum = number.reduce((a, b) => a + b);
//   print(sum);
// }

// 9️⃣ Fold
// like reduce but has initial value

// void main() {
//   var numbers = [1, 2, 3];
//   var result = numbers.fold(10, (prev, element) {
//     return prev + element;
//   });
//   print(result); //16
// }

// 🔟 Function Composition
// Combining function

// ex

int doubleValue(int x) => x * 2;
int addOne(int x) => x + 1;

// void main() {
//   int result = addOne(doubleValue(5));
//   print(result); //11
// }




// ⭐ Advanced FP Topics (Next Level)
// Closures
// Currying
// Lazy evaluation
// Function composition pipelines
// Monads (Option / Either)

