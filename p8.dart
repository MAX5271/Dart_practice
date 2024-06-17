void main() {
  Bike().printing();
}

class Vehicle {
  int speed = 100;
  int noOfWheels = 10;
}

class Car {
  void printing() {
    print('hehe haha');
  }
}

class Bike extends Vehicle implements Car {
  @override
  void printing() {// bs function prototype should be same.
    super.noOfWheels = 2;// won't work because when printing new instance of the class Vehicle was created.
    print(Vehicle().noOfWheels);
    print(Vehicle().speed);
  }
}
