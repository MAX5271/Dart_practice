import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {

  try { var url = Uri.https('jsonplacehor.typicode.com', 'users/1');//exception handeling with wrong address or service unavailable.
  final res = await http.get(url);
    print(jsonDecode(res.body)['name']);
  } catch (e) {
    print(e);
  }
}
