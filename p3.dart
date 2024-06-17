void main() {
  final c1 = Cookie();
  c1.p();//we did not access the private variable here, we called the function p which used the private variable
}

class Cookie {
  int _n1 = 5;// we define private variables with help of an underscore before the variable.
  int n2 = 6;
  void p() {
    print('$_n1 and $n2');//private variables can be used by the function which are defined in the class
  }
}
