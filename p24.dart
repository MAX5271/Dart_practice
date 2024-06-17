//Exception handeling

void main() {
  print(10 ~/ 3);
  // truncated division  10/3->3.33, with '~' we get only the integer part.

  try {
    print(10 ~/ 0);
  } catch (e) {
    //e here is the exeption
    print(
        e); //this is exeption handeling or else the program would have stopped working
  }

  try {
    print(10 ~/ 0);
  } catch (e) {
    print(e);
  } finally {
    print(
        'Finally block executed'); //finally block will always get executed no matter if the exception is there or not
  }

  try {
    print(10 ~/ 0);
  } on Exception catch (e) {
    print(e);
  } catch (e) {
    print('An error occured');
  }

  print(10 / 0);
  print('Nitigya');
}
