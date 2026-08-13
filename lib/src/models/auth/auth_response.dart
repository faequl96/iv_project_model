import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/user/user_response.dart';

class const AuthResponse({required final String token, required final UserResponse user})
    extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(token: json['token'], user: .fromJson(json['user']));
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'user': user.toJson()};
  }

  @override
  List<Object?> get props => [token, user];
}
