import 'package:equatable/equatable.dart';

class CreateUserProfileRequest extends Equatable {
  const CreateUserProfileRequest({required this.firstName, required this.lastName});

  final String firstName;
  final String lastName;

  Map<String, dynamic> toJson() {
    return {'first_name': firstName, 'last_name': lastName};
  }

  @override
  List<Object?> get props => [firstName, lastName];
}

class UpdateUserProfileRequest extends Equatable {
  const UpdateUserProfileRequest({this.firstName, this.lastName});

  final String? firstName;
  final String? lastName;

  Map<String, dynamic> toJson() {
    return {if (firstName != null) 'first_name': firstName, if (lastName != null) 'last_name': lastName};
  }

  @override
  List<Object?> get props => [firstName, lastName];
}
