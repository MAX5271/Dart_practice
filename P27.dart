void main(){

print('Hello');
giveAResultAfter2Second().then((val){
  print(val);
});
/*
what then does is makes compiler proceed forward 
when compiler reached then the function will wait for 2 seconds and siultaneously
running the next lines of the code. 
 */

print('Hola');
print('Greetings');

}

Future<String> giveAResultAfter2Second() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Heyyy';
  });
}