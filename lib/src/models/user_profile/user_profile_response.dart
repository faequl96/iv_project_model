import 'package:equatable/equatable.dart';

class UserProfileResponse extends Equatable {
  const UserProfileResponse({required this.id, required this.firstName, required this.lastName});

  final int id;
  final String firstName;
  final String lastName;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) {
    return UserProfileResponse(
      id: json['id'] as int,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'first_name': firstName, 'last_name': lastName};
  }

  @override
  List<Object?> get props => [id, firstName, lastName];
}
