//STREAMS
//continous updation

void main() async {
  countDown().listen((val) {
    print(val);
  }, onDone: () {
    print("Time up!");
  });
  /*
  StreamSubscription<int> listen(
  void Function(int)? onData, {
  Function? onError,
  void Function()? onDone,
  bool? cancelOnError,
})
   */

  print('Hello how are you today?');
  //since stream is asynchronised generator, the running of the code is not in synchronised manner.
}

//stream returns something so it's return type can not be void
//stream of outputs.
Stream<int> countDown() async* {
  //stream needs async*
  for (int i = 5; i > 0; i--) {
    yield i; // yeild with async*, stream can also have return but if we put async* we use yeild
    await Future.delayed(Duration(seconds: 1));
  }
}
