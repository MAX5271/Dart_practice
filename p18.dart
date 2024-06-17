//LIST OF CLASSES

void main() {
  List<Student> students0 = [
    // this can only contain elements of type Student,
    Student('Nitigya'),
    Student('Ram'),
    Student('Rakesh'),
    Student('Ramesh'),
  ];

  print(students0[2]);
  print(students0[2].name);


  List students = [
    Student('Nitigya'),
    Student('Ram'),
    Student('Rakesh'),
    Student('Ramesh'),
    'String'
  ];
  print(students[0]); // gives the instance of object student

  for (int i = 0; i < 4; i++)
    if (students[i] is Student) // is gives the data type
      print(students[i].name);
    else
      print(students[i]);
}

class Student<T> {
  T name;
  Student(this.name);

  void setName(T n1) {
    // or void setName<T>(name){}
    name = n1;
    print('New name: $n1.');
  }
}
