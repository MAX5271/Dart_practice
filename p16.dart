//LIST

void main() {
  String greetings = 'Hello';
  print(greetings[0]);

  //List is an abstract class.

  List rand = [2, 3, 4, 'hello', true]; //this list can contain anything
  print(rand[3]);

  List<int> marks = [10, 20, 30]; //this list can only contain integers
  print(marks[1]);

}
