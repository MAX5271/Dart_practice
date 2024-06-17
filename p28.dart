import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com',
      'users/1'); //Uri.https(String authority, [String unencodedPath,Map<String, dynamic>? queryParameters,])
  final res = await http.get(url);
  //final hai runtime constant
  //cont hai compile time constant

  print(res.body);//gets the body of the result
  
}
