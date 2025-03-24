import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tgriffit_flutter_sdk/models/user_simplified.dart';
import 'package:tgriffit_flutter_sdk/src/models/user.dart';

import '../models/user_response.dart';

class MyFlutterSDK {
  final String _apiKey;

  MyFlutterSDK(String apiKey) : _apiKey = apiKey;

  Future<String> _fetchUsers() async {
    final endpoint =
        await canConnectToInternet()
            ? 'https://api.azeoo.dev/v1/users'
            : 'http://localhost:3001/api/v1/users';
    try {
      final response = await http.get(
        Uri.parse(endpoint),
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Accept-Language': 'fr-FR',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to fetch: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('[ERROR] $e');
      rethrow;
    }
  }

  Future<String> _fetchUser(String id) async {
    final endpoint =
        await canConnectToInternet()
            ? 'https://api.azeoo.dev/v1/users/$id'
            : 'http://localhost:3001/api/v1/users/$id';
    try {
      final response = await http.get(
        Uri.parse(endpoint),
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Accept-Language': 'fr-FR',
          'X-User-Id': id,
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to fetch: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('[ERROR] $e');
      rethrow;
    }
  }

  Future<bool> canConnectToInternet() async {
    try {
      final response = await http.get(Uri.parse('https://www.google.com'));
      return response.statusCode == 200;
    } catch (e) {
      print('[ERROR] Unable to connect to the internet: $e');
      return false;
    }
  }

  Future<User?> getUserById(String id) async {
    final User user;

    try {
      final response = await _fetchUser(id);
      if (response.isNotEmpty) {
        final Map<String, dynamic> jsonResponse =
            jsonDecode(response) as Map<String, dynamic>;
        user = User.fromJson(jsonResponse);
      } else {
        throw FormatException('Invalid JSON response');
      }
      return user;
    } catch (e) {
      print('[ERROR] $e');
      rethrow;
    }
  }

  Future<List<UserSimplified>?> getUsers() async {
    final response = await _fetchUsers();

    if (response.isNotEmpty) {
      return UserResponse.fromJson(jsonDecode(response)).items;
    } else {
      throw FormatException('Invalid JSON response');
    }
  }
}

// {"id":1,"first_name":"Samuel","last_name":"Verdier","info":"H, 48 - 175 cm \/ 106,6 kg - Montpellier, France","email":"samuel.verdier@gmail.com","picture":[{"url":"https:\/\/cdn-staging.azeoo.com\/users\/1\/thumbnail\/5c497ab871644.jpg","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/users\/1\/small\/5c497ab871644.jpg","label":"small"},{"url":"https:\/\/cdn-staging.azeoo.com\/users\/1\/large\/5c497ab871644.jpg","label":"large"}],"account_type":"premium","account_type_club":null,"country_flag":"https:\/\/flagcdn.com\/64x48\/fr.png","points":156169,"badges_count":71,"badges":[{"id":129,"name":"Fitness lover","description":"Vous avez gagn\u00e9 3 fois ce badge en vous entra\u00eenant le jour de la St Valentin.","date":"2025-02-14","count":3,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/129-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/129-v2.png","label":"small"}]},{"id":184,"name":"Vegan Day","description":"Vous avez gagn\u00e9 4 fois ce badge en vous entra\u00eenant durant la journ\u00e9e internationale Vegan.","date":"2024-11-01","count":4,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/184-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/184-v2.png","label":"small"}]},{"id":200,"name":"Compliment Day","description":"Vous avez gagn\u00e9 2 fois ce badge en vous entra\u00eenant durant la journ\u00e9e internationale du compliment.","date":"2024-03-01","count":2,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/200-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/200-v2.png","label":"small"}]},{"id":172,"name":"Mardi Gras","description":"Vous avez gagn\u00e9 3 fois ce badge en vous entra\u00eenant durant Mardi Gras.","date":"2024-02-21","count":3,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/172-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/172-v2.png","label":"small"}]},{"id":254,"name":"Blue Monday Day","description":"Vous avez gagn\u00e9 3 fois ce badge en vous entra\u00eenant durant la journ\u00e9e internationale du Blue Monday.","date":"2024-01-18","count":3,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/254-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/254-v2.png","label":"small"}]},{"id":115,"name":"Happy birthday","description":"Vous avez gagn\u00e9 1 fois ce badge en vous entra\u00eenant le jour de votre anniversaire.","date":"2024-01-16","count":1,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/115-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/115-v2.png","label":"small"}]},{"id":153,"name":"Black Friday","description":"Vous avez gagn\u00e9 2 fois ce badge en vous entra\u00eenant durant la journ\u00e9e du Black Friday.","date":"2023-11-24","count":2,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/153-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/153-v2.png","label":"small"}]},{"id":149,"name":"Men's Day","description":"Vous avez gagn\u00e9 4 fois ce badge en vous entra\u00eenant durant la journ\u00e9e internationale de l'homme.","date":"2023-11-19","count":4,"images":[{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/thumbnail\/149-v2.png","label":"thumbnail"},{"url":"https:\/\/cdn-staging.azeoo.com\/badges\/small\/149-v2.png","label":"small"}]}],"skills":[{"id":"21","name":"Crossfit"},{"id":"42","name":"Musculation"}],"is_following":null,"coach_attachment_state":null,"is_public_coach":false,
