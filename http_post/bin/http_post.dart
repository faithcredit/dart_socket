import 'package:http/http.dart' as http;
void main(List<String> arguments) async {
  var url = Uri.parse("http://httpbin.org/post");
  var response = await http.post(url, body:'name=Bryan&color=blue');
  print('Response status ${response.statusCode}');
  print('Response body ${response.body}');
}
