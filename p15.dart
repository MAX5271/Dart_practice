void main() { 
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


//interface classes can only be implement and not extend
abstract interface class Animal {}//we can also use interface here without abstract, but true interface is used with abstract

sealed class Human implements Animal {}

base class Dog implements Animal {}

final class Cat extends Animal {}


//mixin class, using with keyword, normal classes can't be mixed.