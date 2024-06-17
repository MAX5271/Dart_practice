//GETTERS AND SETTERS

void main() {
  //gs._height = 34; This statement will give an error
  //print(gs.setH(1)); This not the syntax of setter

  final g = gs();

  g.setH = 12;

  print(g.h);

  /*
  this code will not give correct output as when we use gs() it always creates new instance of the class and not saves 
  the previous instance so the ouput will be the original value and not the modified value.
   
  gs().setH = 12;

  print(gs().h);
*/
}

class gs {
  int _height = 55;
  int get h => _height; //this is the syntax of a getter.

  set setH(int h1) {
    //this is how we define a setter
    _height = h1;
  }

  /*
        suppose we want to chane the value of _height outside the class,
        we can not do that as it is private variable so to change the value of 
        private variable we use getter.
  */
}
