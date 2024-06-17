void main() {
  List<Student> students = [
    Student('Nitigya'),
    Student('Ram'),
    Student('Rakesh'),
    Student('Ramesh'),
  ];

  print(students);
  // students[4] = Student('Somesh'); can't do this to add an element here.

  students.add(Student('Somesh'));
  print(students);

  students.insert(3, Student('Sonal'));
  print(students);

  /*
  just type students and then '.' to get many function in the dropdown menu.
   */
}

class Student<T> {
  T name;
  Student(this.name);

  @override //we are overriding existing toString method that dart automaticaly creates for us when we create a new class
  String toString() => 'Student name: $name';
  // if we do not do this then when we print students like we did on line 9, we are actually just printing the instance
  // of the class due to the existing toString method present in the class which is created automatically.
}
