// in dart two tpe syntax is there fo rnull safety
// " ? ", " ! "

void main() {
  int? x; // this will store null value in x variable
  int y = x!; // in this type  error will come as cant be assigned int in int?
  print(
    y,
  ); //but " ! ", this will allow to take null varialble as it says value is not null
}

// ?. → Null-aware access
// ! → Force unwrap (Dangerous ⚠️)

// You are telling Dart:

// "Trust me, it's not null."

// ?? → Default value if null

// ? → Nullable type
