//INHERITANCE
//(MULTIPLE INHERITANCE IS NOT SUPPORTED IN DART)(THE WORK AROUND THIS IS YOU CAN DERIVE THE CLASSES)

void main() {
  Car car = Car();

  print(car.isEngineWorking);
  print(car.noOfWheels);

  Vehicle truck = Truck();
  print(truck.isEngineWorking);
  print((truck as Truck).noOfWheels);
  /*
  here Vehicle is parent class and truck is child class so we can make an object which data type Vehicle for the class
  Truck. But the class Vehicle does not contain the variable noOfWheels so if we write 'truck.noOfWheels' it will give
  an error as Truck contains Vehicle but Vehicle does not contain Truck.

  to tackel this we use 'as' operator here as don in LINE 11 OF THE CODE.
   */

  car.accelerate();
  print('Car\'s speed is: ${car.speed}Km/hr');
  truck.accelerate();
  print('Truck\'s speed is: ${truck.speed}Km/hr');
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;

  void accelerate() {
    speed += 10;
  }
}

// this is the way we do inheritance in dart

class Car extends Vehicle {
  int noOfWheels = 4;

  /*
  If we want to create any modification in parent class for a specific child class, we use '@override'
  this makes us so that we do not have to change things in parent class for a specific child class 
  
  */

// OVERRIDE FUNCTION WILL HAVE MORE PRIORITY
  @override // WHEN INHERITED CLASS HAS A METHOD WITH SAME NAME WE USE OVERRIDE
  void accelerate() {
    speed += 30;
  }

  void printsomething() {
    print(noOfWheels);
  }
}

class Truck extends Vehicle {
  int noOfWheels = 8;

  void printsomething() {
    print(noOfWheels);
  }

  void accelerate() {
    super
        .accelerate(); //super exits only for extends and not for implements. Super gives access to parent class.
    super.isEngineWorking = true;// can also change the value of parent variable with super.
  }
}
