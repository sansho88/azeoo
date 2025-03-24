import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tgriffit_flutter_sdk/src/get_user_profile.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  final sdk = MyFlutterSDK(dotenv.env['API_KEY']!);
  try {
    final user = await sdk.getUserById('1');
    if (user != null) {
      print('User : ${user.firstName} ${user.lastName}');
    } else {
      print('User not found');
    }
    debugPrint('Waiting...');

    final users = await sdk.getUsers();
    if (users!.isNotEmpty) {
      users.forEach((user) {
        print('User : ${user.firstName} ${user.lastName}');
      });
    }
  } catch (e) {
    print("Error: $e");
  }
}
