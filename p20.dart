//filtering in lists

void main() {
  List<Student> students = [
    Student('Nitigya', 100),
    Student('Ram', 20),
    Student('Rakesh', 10),
    Student('Ramesh', 30)
  ];
  print(students);

  List<Student> filteredStudents = [];

// for-in loop is shown below, learn it.

  for (final student in students) //or for (int i = 0; i < students.length; i++)
  {
    if (student.marks >= 20) filteredStudents.add(student);
  }
  print('The students who passed are: \n');
  print(filteredStudents);

  //better method to filter is shown below
  final filterds = students.where((student) => student.marks >= 20);
  //gives an ouput as an iterable

  print(filterds);
  print(filterds.toList()); //this converts an iterable to a list.
}

class Student<T> {
  String name;
  final int marks;
  Student(this.name, this.marks);
  @override
  String toString() => 'Student name: $name, Marks: $marks \n';
}
/*
sets are similar to list but we use {} brackets instead of []
also it contain all unique elements even if we repeat elements when we print them only unique elements will get printed
 */