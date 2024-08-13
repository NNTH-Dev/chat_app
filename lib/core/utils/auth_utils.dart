import 'package:meetdy_chat/core/constants/constants.dart';
import 'package:meetdy_chat/features/auth/data/models/tokens.dart';
import 'package:shared_preferences/shared_preferences.dart';

void saveToken(String? token, String? refreshToken) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(kToken, token!);
  await prefs.setString(kRefreshToken, refreshToken!);
}

Future<TokensModel> getTokens() async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString(kToken);
  final refreshToken = prefs.getString(kRefreshToken);
  return TokensModel(
      token: token.toString(), refreshToken: refreshToken.toString());
}
