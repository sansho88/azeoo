library;

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyFlutterSDK {

  String _apiKey = '';

  MyFlutterSDK(){
    dotenv.load(fileName: ".env");
    _apiKey = dotenv.env['API_KEY']!;
  }

  Future<String> fetchMe() async {
    final endpoint = 'https://api.azeoo.dev/v1/users/me';
    final response = await http.get(Uri.parse(endpoint), headers: {
      'Authorization': 'Bearer $_apiKey',
      'Accept-Language': 'fr-FR',
      'X-User-Id': '1'
    });

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
