void main() {
  //###list (orderd array)
  // explicit declaration of list
  List<String> fruits = ["mango", "banana", "orange"];

  //implicit declaration of list

  var number = [10, 20, 30];

  // adding an item

  fruits.add("minions");

  //#### sets (unique Collections)
  //Explicit declaration

  Set<String> uniqIds = {"one", "two", "three"};

  //implicit declaration

  var names = <String>{}; //starts empty

  // This will do nothing because 'one' already exists
  uniqIds.add(' one'); //

  // 1. Adding a single item
  names.add('Alice');

  // 2. Adding multiple items at once
  names.addAll(['Bob', 'Charlie', 'Alice']);

  print(names); // Output: {Alice, Bob, Charlie} (Alice isn't repeated!)

  //##### Maps (key - value Pairs)

  //map<keyType, valueType>
  Map<String, dynamic> user = {'name': 'Intern', 'day': 16, 'isexcited': true};

  print(user['name']);

  //adding a new pair
  user['location'] = 'remote';

  // Dart automatically makes this Map<String, String>
  var capitals = {
    'USA': 'Washington D.C.',
    'India': 'New Delhi',
    'Egypt': 'Cairo',
  };
}


//## point to note

// var data = {}; → This is a Map<dynamic, dynamic>

// var data = <String>{}; → This is a Set<String>

// var data = {'Apple'}; → This is a Set<String> (Dart sees the value and knows it's a Set)


// If you type...,Dart creates a...,Why?
// var a = [];,List,Brackets always mean List.
// var b = {};,Map,Curly braces default to Map.
// var c = <String>{};,Set,The <String> tells Dart it's a Set.
// var d = {'x'};,Set,"There is no : (colon), so it can't be a Map."