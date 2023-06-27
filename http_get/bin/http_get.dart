import 'package:http/http.dart' as http;
void main(List<String> arguments) async {
  var url = Uri.parse("http://httpbin.org/asdasdasd");
  var response = await http.get(url);
  print('Response status ${response.statusCode}');
  print('Response body ${response.body}');
}
