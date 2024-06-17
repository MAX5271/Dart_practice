void main() {
  Animal animal = Cat();
  switch (animal) {
    case Dog():
      print('Dog');

    case Cat():
      print('Cat');

    case Human():
      print('Human');
  }
}

// sealed means that all the class that are child to parent sealed class exhaustively move
//like if we do no include cat and human in switch in main function we will get an error 
//we need to also handel cat and human if we use Animal animal object anywhere
// helps in exception handeling

//it works only if all the sub classes are included in the same library
//if can not be extended or implemented outside of a library

//we can also used final keyword in place of sealed

sealed class Animal {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}
