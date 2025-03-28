import 'package:equatable/equatable.dart';

class UserProfileRequest extends Equatable {
  const UserProfileRequest({this.firstName, this.lastName});

  final String? firstName;
  final String? lastName;

  Map<String, dynamic> toJson() {
    return {if (firstName != null) 'first_name': firstName, if (lastName != null) 'last_name': lastName};
  }

  @override
  List<Object?> get props => [firstName, lastName];
}
