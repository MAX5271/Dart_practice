void main() {
  Car car = Car();
  car.accelerate();
  Bike().accelerate();
}

/*
in abstract class we can just leave a function block empty, here we mean to tell some one who implements the parent
class that they need to define this parameter or a method relating to it.

when we use abstract we need to define the same function(not neccessary to have same variables also) in the child class
with override even if we use extends, same as implements. 
 */
int speed = 10;

abstract class Vehicle {
  void accelerate();
}

class Car implements Vehicle {
  @override
  void accelerate() {
    speed += 20;
    print(speed);
  }
}

class Bike extends Vehicle {
  @override
  void accelerate() {
    speed += 30;// since global variable is manipulated here the final speed will not be 40 but 60 due to Car class.
    print(speed);
  }
}
