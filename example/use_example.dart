import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tgriffit_flutter_sdk/src/get_user_profile.dart';


void main() async {
  await dotenv.load(fileName: '.env');
  final sdk = MyFlutterSDK(dotenv.env['API_KEY']!);
  try {
    final me = await sdk.getMe();
    print('User found: ${me.id} ${me.lastName}');
  } catch (e) {
    print("Error: $e");
  }
}
