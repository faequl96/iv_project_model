import 'package:equatable/equatable.dart';

class UserProfileResponse extends Equatable {
  const UserProfileResponse({required this.id, required this.email, required this.firstName, required this.lastName});

  final int id;
  final String email;
  final String firstName;
  final String lastName;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) {
    return UserProfileResponse(
      id: json['id'] as int,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'email': email, 'first_name': firstName, 'last_name': lastName};
  }

  @override
  List<Object?> get props => [id, email, firstName, lastName];
}
