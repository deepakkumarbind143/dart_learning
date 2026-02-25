void main() {
  //List<int> list = [1, 2, 3];
  var list = [1, 3, 4, 5, 6];

  for (var i in list) {
    print(' hello $i');
  }

  list.forEach((num) => print('this is for each $num'));

  // Looping through a Map is slightly different because you have both a Key and a Value.

  Map<String, dynamic> data = {'name': 'deepak', 'age': 20};

  data.forEach((key, value) => {print('the $key is $value')});

  //### this one way for object
  // for (final entry in myMap.entries) {
  //   print('${entry.key} :- ${entry.value}');
  // }

  //## this is another way for object
  // for (final MapEntry(:key, :value) in myMap.entries) {
  //   print('$key :- $value');
  // }
}
