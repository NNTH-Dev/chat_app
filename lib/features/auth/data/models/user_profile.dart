import 'package:meetdy_chat/features/auth/domain/entiites/user_profile.dart';

class UserProfile extends UserProfileEntity {
  const UserProfile(
      {String? id,
      String? name,
      String? username,
      DateOfBirthEntity? dateOfBirth,
      bool? gender,
      String? avatar,
      String? avatarColor,
      String? coverImage})
      : super(
            id: id,
            name: name,
            username: username,
            dateOfBirth: dateOfBirth,
            gender: gender,
            avatar: avatar,
            avatarColor: avatarColor,
            coverImage: coverImage);

  factory UserProfile.fromJson(Map<String, dynamic> map) {
    return UserProfile(
        id: map['id'] ?? "",
        name: map['name'] ?? "",
        username: map['username'] ?? "",
        dateOfBirth: DateOfBirthEntity(
            day: map['dateOfBirth']['day'] ?? 0,
            month: map['dateOfBirth']['month'] ?? 0,
            year: map['dateOfBirth']['year'] ?? 0));
  }
}
