// map → change
// where → filter
// fold → combine

// list
void main(List<String> args) {
  const names = ['foo', 'bar', 'baz', 'qux'];

  //to print each element of list
  // for (final name in names) {
  //   print(name);
  // }

  // //to reversed the items of list
  // for (final name in names.reversed) {
  //   print(name);
  // }

  //to check item in list
  // if (names.contains('bar')) {
  //   print('bar is in the list');
  // }

  //where is used to find value i na,e that staets with b
  // for (final value in names.where((String name) => name.startsWith('b')))
  //   print(value);

  // use foreach to perform any acction

  // names.sublist(2, 3).forEach(print);

  //  ' add 'use to add elemnets to list
  // final ages = [10, 20, 30];
  // ages.add(50);
  // print(ages);

  //#### press f2 to change any name in any place

  //map

  // names.map((item) => item.toUpperCase()).forEach(print);

  // fold
  // fold is used to:

  // Combine all elements of a list into a single value.

  // It reduces a list into one result.

  // final numbers = [1, 2, 3];
  // final sum = numbers.fold(
  //   0,
  //   (int intialValue, int thisValue) => intialValue + thisValue,
  // );
  // print(sum);

  // List<String> words = ["Hello", "World"];

  // String sentence = words.fold("", (prev, word) => prev + " " + word);

  // print(sentence);
}
