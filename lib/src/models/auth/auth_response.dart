import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/user/user_response.dart';

class AuthResponse extends Equatable {
  const AuthResponse({required this.token, required this.user});

  final String token;
  final UserResponse user;

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(token: json['token'] as String, user: UserResponse.fromJson(json['user']));
  }

  @override
  List<Object?> get props => [token, user];
}
