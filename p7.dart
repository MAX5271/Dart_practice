//IMPLEMENTS
//iy you want to create everythig but need set of instructions

void main() {
  print(Car().noOfWheels);
  print(Vehicle().noOfWheels);
}

class Vehicle {
  int noOfWheels = 10;
  int speed = 10;
}

/*
when we use implemets we need to put all the variable and the methods present in the parent class
int the child class while also putting override before each of the variable or the methods
 */

class Car implements Vehicle {
  @override
  int noOfWheels = 4;
  @override
  int speed = 40;
}
