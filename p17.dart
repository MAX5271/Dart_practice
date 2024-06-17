void main() {
  Student s1 = Student('Nitigya');
  print(s1.name);
  Student s2 = Student(20);
  print(s2.name);
  Student s3 = Student<bool>(true);
  //if we do <data type> then we restrict ourselves from giving it any input.
  print(s3.name);
  s1.setName('Ram');
  print(s1.name);
}

//GENERICS '<>'

/*
here T will take any data type we give it, we passed string so it took string, then we passed 20 so it took form of an
integer.
It can be used when we need to have multiple input types for a constructor of a class. 
 */

class Student<T> {
  T name;
  Student(this.name);

  void setName(T n1) {
    // or void setName<T>(name){}
    name = n1;
    print('New name: $n1.');
  }
}
