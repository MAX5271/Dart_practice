void main() {
  print('${Cookie().size}cm'); //string interapolation.

  final cookie = Cookie(); // creating an object of the cookie class
                           // by final here we can set the object of the class only once
  print(cookie.shape); // using the object of the class

  cookie.shape =
      'Rectangle'; // we changed the value of the variable in the class
  // we used final keyword with the object name of the class and not the variables of the class;

  print(cookie.shape);
}

class Cookie {
  // variables
  String shape = "Circle";
  double size = 15.2; //cm

  //method
  void baking() {
    print('Baking has started.');
  }

  bool iscooling() {
    return false;
  }
}
