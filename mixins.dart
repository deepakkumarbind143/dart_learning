// Mixins
// Mixins allow you to reuse code in multiple classes.

// instead of interface
// class A extends B

// mixins Use:
// Class A with MixinName

// Simple Mixin Example

mixin Logger {
  void log(String message) {
    print("LOG: $message");
  }
}

class User with Logger {}

// void main() {
//   User user = User();
//   user.log("User created");
// }

// multiple Mixins  aloowed

mixin A {
  void methodA() => print("A");
}

mixin B {
  void methodB() => print("B");
}

class Test with A, B {}

void main() {
  Test t = Test();
  t.methodA();
  t.methodB();
}

// 10️⃣ Difference Between Abstract Class and Mixin
// Feature	               Abstract Class	               Mixin
// Can be instantiated	   ❌ No	                        ❌ No
// Used with	              extends	                      with
// Purpose	                define structure	             share functionality
// Multiple usage	          ❌ single inheritance	        ✅ multiple mixins

// when to use Mixins 
// Share reusable behavior
// Avoid inheritance chains
// Add utilities

// Example
// Logging
// Validation
// Animation support
