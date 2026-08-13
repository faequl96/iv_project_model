import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/user_role_type.dart';

class const UserRequest({required final UserRoleType role}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'role': role.toJson()};
  }

  @override
  List<Object?> get props => [role];
}
