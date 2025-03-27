import 'package:equatable/equatable.dart';

class LoginAuthRequest extends Equatable {
  const LoginAuthRequest({required this.id, required this.email});

  final String id;
  final String email;

  Map<String, dynamic> toJson() {
    return {'id': id, 'email': email};
  }

  @override
  List<Object?> get props => [id, email];
}
