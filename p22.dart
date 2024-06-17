void main() {
  Map<String, int> marks = {'Nitigya': 100, 'Rakesh': 35, 'Somesh': 50};
  print(marks);
  marks['Ramesh'] = 40; // adding element to a map
  print(marks);
  Map<String, int> mark1 = {'N': 10, 'R': 3, 'S': 5};
  marks.addAll(mark1);
  print(marks);

  for (int i = 0; i < marks.length; i++) {
    print(
        '${marks.keys.toList()[i]} : ${marks.values.toList()[i]}'); //samajh le bhai khud

    marks.forEach((key, value) {
      // smarter way.
      print('$key: $value ');
    });
  }

  //we can also define list as:  List<string, int> same as a map but it will be a list not a map
  // to convert a list to a map use list_name.map();
}
