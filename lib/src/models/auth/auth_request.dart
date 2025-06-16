import 'package:equatable/equatable.dart';

class LoginAuthRequest extends Equatable {
  const LoginAuthRequest({required this.id, required this.email, this.displayName});

  final String id;
  final String email;
  final String? displayName;

  Map<String, dynamic> toJson() {
    return {'id': id, 'email': email, 'display_name': displayName};
  }

  @override
  List<Object?> get props => [id, email, displayName];
}
