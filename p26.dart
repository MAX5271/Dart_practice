//MAKING TIME DELAY


void main() async {
  print('hey');
  // THE DELAY WILL BE CAUSE WHEN EVER THE FUNCTION IS CALLED, IT DOES'T MATTER IF WE STORE IT'S RETURNED VALUE.
  print(await giveAResultAfter2Second());
  print('hola');
}

//this is how we use to delay an even for a specific amount of time and return something
Future<String> giveAResultAfter2Second() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Heyyy';
  });
}
