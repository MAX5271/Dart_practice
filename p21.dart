//MAPS

void main() {
  //by default the key and the value of the map contains dynamic data type
  //if we pass generics like this
  Map<String, int> marks = {
    'Nitigya': 100,
    'Rakesh': 35,
    'Somesh': 50
  }; // syntax of maps

  print(marks['Rakesh']?.isEven);//The property 'isEven' can't be unconditionally accessed because the receiver can be 'null'.
//Try making the access conditional (using '?.') or adding a null check to the target ('!').

  print(marks['Nitigya']);
}

class Student<T> {
  final String name;
  final int marks;
  Student(this.name, this.marks);
  @override
  String toString() => 'Student name: $name \n';
}
