import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    String data = response.body;
    if (response.statusCode == 200) {
      return data;
    } else {
      print(response.statusCode);
    }
  }
}
