//MIXIN(CAN USE MULTIPLE MIXINS 'WITH' AND ',')
/*
mixes in
does not create a parent child relationship like classes and extend does.
we use mixin where we just want to reuse a block of code.
*/

//Object is the super class of everything here like int,string,bool,etc.

void main() {
  Animal().fn();
  Cat().p();
  Object a = 5;
  print(a);
}

mixin Jump {
  int jumping = 10;
}
mixin Scream{
  String sound = "Loud";
}
//we can also use 'on' with mixin to restrict the access

class Animal with Jump,Scream {
  // with is used with mixin and extend is used with classes.
  void fn() {
    print('${jumping}cm');
    print(sound);
  }
}

class Cat extends Animal {
  //can use like this too, classes can't be used as mixins, can't use with here instead of with
  void p() {
    print('${jumping}cm');
    print(sound);
  }
}
