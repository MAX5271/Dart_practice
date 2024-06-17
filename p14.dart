void main() {
//Abstract classes can't be instantiated.
//Try creating an instance of a concrete subtype.

//if we use selead(which is somewhat similar to abstract) we can not make an instance of that class
//we need to use final or base instead of that
  Animal animal = Cat();
  switch (animal) {
    case Dog():
      print('Dog');

    case Human():
      print('Human');

    case Cat():
      print('Cat');
  }
}

//The type of child classes must be 'base', 'final' or 'sealed' because the supertype 'Animal' is 'base'.
//this same is true for base and final.

//base classes can only be extend and not implement
base class Animal {}

sealed class Human implements Animal {}

base class Dog implements Animal {}

final class Cat extends Animal {}
