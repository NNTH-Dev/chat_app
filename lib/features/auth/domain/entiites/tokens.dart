import 'package:equatable/equatable.dart';

class TokensEntity extends Equatable {
  String? token;
  String? refreshToken;

  TokensEntity({
    this.token,
    this.refreshToken,
  });

  @override
  List<Object?> get props {
    return [token, refreshToken];
  }
}
