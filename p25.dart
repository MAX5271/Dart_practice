//FUTURES


/*
using future void is a good practice whenever we use async
we can just use void instead of future void
void is fire and forget, it does not wait for the return of any value but future void does
 */


Future<void> main() async {
  print(giveAResultAfter2Seconds());
  // the return type of the fucntion is not string but futures string.
  print(await giveAResultAfter2Seconds());
  // we used async after main() to get access to await
  //await waits for the future class and we get the string output.
  print('hey');
  print('hello');
  print('hola');
}

Future<String> giveAResultAfter2Seconds() async {
  //async is not reqired to make future class
  //we use async when we need to wait for external website(API).
  return Future(() {
    //return 'hey!!!'; this works aswell
    return 'Hey!!!'; // here we wraped a string with a future
  });
}
