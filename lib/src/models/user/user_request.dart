import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/user_role_type.dart';

class UserRequest extends Equatable {
  const UserRequest({required this.role});

  final UserRoleType role;

  Map<String, dynamic> toJson() {
    return {'role': role.toJson()};
  }

  @override
  List<Object?> get props => [role];
}
