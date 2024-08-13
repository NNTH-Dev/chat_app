import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
  final String? id;
  final String? name;
  final String? username;
  final DateOfBirthEntity? dateOfBirth;
  final bool? gender;
  final String? avatar;
  final String? avatarColor;
  final String? coverImage;

  const UserProfileEntity({
    this.id,
    this.name,
    this.username,
    this.dateOfBirth,
    this.gender,
    this.avatar,
    this.avatarColor,
    this.coverImage,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        username,
        dateOfBirth,
        gender,
        avatar,
        avatarColor,
        coverImage,
      ];
}

class DateOfBirthEntity extends Equatable {
  final int? day;
  final int? month;
  final int? year;

  const DateOfBirthEntity({this.day, this.month, this.year});

  @override
  List<Object?> get props => [day, month, year];
}
