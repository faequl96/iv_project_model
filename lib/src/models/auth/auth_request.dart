import 'package:equatable/equatable.dart';

class const LoginAuthRequest({
  required final String id,
  required final String email,
  final String? displayName,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'id': id, 'email': email, 'display_name': displayName};
  }

  @override
  List<Object?> get props => [id, email, displayName];
}
