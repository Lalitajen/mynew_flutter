import 'package:http/http.dart'as http;
class Myconnection{
  
  connect (List<String> arguments) async {
    var url = Uri.parse('http://localhost:3000/login');
    var response = await http.post(url, body: {
      "name": "jenny"
    });

    print('Response body: ${response.body}');

  }
}