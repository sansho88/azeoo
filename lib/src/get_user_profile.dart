import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:tgriffit_flutter_sdk/src/models/user.dart';

class MyFlutterSDK {
  final String _apiKey;
  final Dio _dio;

  MyFlutterSDK(String apiKey) : _apiKey = apiKey, _dio = Dio();

  Future<String> _fetchMe() async {
    // Utilisation d'un proxy en cas de problème de CORS
    final endpoint =
        await canConnectToInternet()
            ? 'https://api.azeoo.dev/v1/users/me'
            : 'http://localhost:3001/api/v1/users/me';
    try {
      _dio.options.headers['Authorization'] = 'Bearer $_apiKey';
      _dio.options.headers['Accept-Language'] = 'fr-FR';
      _dio.options.headers['X-User-Id'] = '1';

      final response = await _dio.get(endpoint);

      if (response.statusCode == 200) {
        return response.data.toString();
      } else {
        throw Exception('Failed to fetch: ${response.statusMessage}');
      }
    } on DioExceptionType catch (e) {
      if (e.runtimeType.hashCode == DioExceptionType.connectionError.hashCode) {
        print('[ERROR] Network issue: $e');
      } else {
        print('[ERROR] DioException: $e');
      }
      rethrow;
    } catch (e) {
      print('[ERROR] $e');
      rethrow;
    }
  }

  Future<bool> canConnectToInternet() async {
    try {
      final response = await _dio.get('https://www.google.com');
      return response.statusCode == 200;
    } on DioException catch (e) {
      debugPrint('[DioException]');
      if (e.type == DioExceptionType.connectionError) {
        print('[ERROR] Network issue: $e');
      } else if (e.type == DioExceptionType.unknown) {
        print('[ERROR] CORS issue or server error: $e');
      } else {
        print('[ERROR] DioException: $e');
      }
      return false;
    } catch (e) {
      print('[ERROR] Unable to connect to the internet: $e');
      return false;
    }
  }

  Future<User> getMe() async {
    final user;

    try {
      final response = await _fetchMe();
      //rajoute les guillemets manquants de la reponse... Peut-être à cause du proxy ?
     //todo: fix problème "":"" manquants
      String fixedJson = response.replaceAllMapped(
              RegExp(r'(\w+):\s*([^,}]+)'),
              (match) => '"${match.group(1)}": "${match.group(2)}"'
          );

      // print(fixedJson);
      print(response);
      if (response.isNotEmpty) {
        final Map<String, dynamic> jsonResponse = jsonDecode(fixedJson) as Map<String, dynamic>;
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
}
