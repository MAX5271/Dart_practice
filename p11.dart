void main() {
  //1) POLYMORPHISM

  Animal animal = Cat();
  animal.sound();
  animal = Dog();
  animal.sound();
  /*
  since Cat and Dog both are children classed of the parent class Animal
  there for animal object can take any form from Cat or Dog
  this is know as polymorphism.
   */

  //2) ABSTRACTION
  Animal animal1 = Cat();
  animal1.sound();
  //hiding background complexity and using only the features of a class.

  //3)INHERITANCE
  //4)ENCAPSULATION
  /*
   encapsulation is bundling of data and using private variables like we did by using under-score.
   */
}

abstract class Animal {
  void sound();
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat meowing.');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barking.');
  }
}
