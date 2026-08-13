import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/user_role_type.dart';
import 'package:iv_project_model/src/models/iv_coin/iv_coin_response.dart';
import 'package:iv_project_model/src/models/user_profile/user_profile_response.dart';

class const UserResponse({
  required final String id,
  required final String unixId,
  required final UserRoleType role,
  required final UserProfileResponse userProfile,
  required final IVCoinResponse ivCoin,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'] as String,
      unixId: json['unix_id'] as String,
      role: UserRoleTypeExtension.fromJson(json['role']),
      userProfile: .fromJson(json['user_profile']),
      ivCoin: .fromJson(json['iv_coin']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'unix_id': unixId,
      'role': role.toJson(),
      'user_profile': userProfile.toJson(),
      'iv_coin': ivCoin.toJson(),
    };
  }

  @override
  List<Object?> get props => [id, unixId, role, userProfile, ivCoin];
}
