import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/user/user_response.dart';

class AuthResponse extends Equatable {
  const AuthResponse({required this.token, required this.user});

  final String token;
  final UserResponse user;

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(token: json['token'], user: UserResponse.fromJson(json['user']));
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'user': user.toJson()};
  }

  @override
  List<Object?> get props => [token, user];
}
