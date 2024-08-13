import 'package:meetdy_chat/features/auth/domain/entiites/tokens.dart';

class TokensModel extends TokensEntity {
  TokensModel({
    final String? token,
    final String? refreshToken,
  }) : super(
          token: token,
          refreshToken: refreshToken,
        );

  factory TokensModel.fromJson(Map<String, dynamic> map) {
    return TokensModel(
      token: map['token'] ?? "",
      refreshToken: map['refreshToken'] ?? "",
    );
  }
}
