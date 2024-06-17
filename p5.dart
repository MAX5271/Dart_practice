void main() {
  final c = Constants();
  print(Constants.greeting);
  print(c.bye);
}

class Constants {
  Constants() {
    print(
        'Constructor called'); //constructor is always called whenever an object of a class is created.
  }

  static String greeting =
      'Hello, how are you.'; // when we use static, we just simply mean to use the property of the function
  // without actually needing to create an object which will use memory.
  String bye = 'bye';
}
