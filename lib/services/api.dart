import 'dart:convert';
import 'package:http/http.dart' as http;
import '../constants.dart';
class Api{

  final Url;
  Api(this.Url);

  Future getData() async {
    var url = Uri.parse(Url);
    final response = await http.get(url);
    final data = response.body;

    if (response.statusCode == 200) {
      return jsonDecode(data);
    } else {
      throw Exception('An error occurred getting places nearby');
    }
  }
}