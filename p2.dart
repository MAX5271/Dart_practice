void main() {
  print('${Cookie("rectangle", 17.3).size}cm'); //string interapolation.
  print('${Cookie("Square", 3).shape}.');

  String? name;// assings null to name
  print(name);

  Cookie("Circle", 15.7);
}

//this operator gives the instance of the class where we are in.

class Cookie {
  // variables
  String shape = "Circle";
  double size = 15.2; //cm

  Cookie(this.shape, this.size) {
    print('Constructor called');
    baking();
  }

  //method
  void baking() {
    print('Baking has started.');
  }

  bool iscooling() {
    return false;
  }
}
