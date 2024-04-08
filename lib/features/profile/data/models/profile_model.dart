import 'package:trendspot_newes_app/core/api/endpoint.dart';

class UserModel {
  final String profilePic;
  final String email;
  final String phone;
  final String name;
  final Map<String, dynamic> address;

  UserModel({
    required this.profilePic,
    required this.email,
    required this.phone,
    required this.name,
    required this.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      profilePic: jsonData['user'][RegestrionApiKey.profilePic],
      email: jsonData['user'][RegestrionApiKey.email],
      phone: jsonData['user'][RegestrionApiKey.phone],
      name: jsonData['user'][RegestrionApiKey.name],
      address: jsonData['user'][RegestrionApiKey.location],
    );
  }
}
