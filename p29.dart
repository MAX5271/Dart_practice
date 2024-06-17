import 'package:http/http.dart' as http;
import 'dart:convert';

//if you can avoid dynamic, avoid it.

//dart:convert to convert the output we are getting to a list.
void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  final res = await http.get(url);

  //print(jsonDecode(res.body)); for entire data in list format
  print(jsonDecode(res.body)['name']);
}
