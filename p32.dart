import 'dart:async';

void main() async {
  countDown();
  print('Hello how are you today?');
}

void countDown() {
  //we are telling the stream controller that the stream is of integer values

  final controller = StreamController<int>();
  for (int i = 1; i <= 5; i++) controller.sink.add(i);

/*
StreamSubscription<int> listen(
  void Function(int)? onData, {
  Function? onError,
  void Function()? onDone,
  bool? cancelOnError,
})
 */

  controller.stream.listen((val) {
    print(val);
  });
}
