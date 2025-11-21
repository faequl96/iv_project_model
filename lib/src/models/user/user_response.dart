import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/user_role_type.dart';
import 'package:iv_project_model/src/models/iv_coin/iv_coin_response.dart';
import 'package:iv_project_model/src/models/user_profile/user_profile_response.dart';

class UserResponse extends Equatable {
  const UserResponse({
    required this.id,
    required this.unixId,
    required this.role,
    required this.userProfile,
    required this.ivCoin,
  });

  final String id;
  final String unixId;
  final UserRoleType role;
  final UserProfileResponse userProfile;
  final IVCoinResponse ivCoin;

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json['id'] as String,
      unixId: json['unix_id'] as String,
      role: UserRoleTypeExtension.fromJson(json['role']),
      userProfile: UserProfileResponse.fromJson(json['user_profile']),
      ivCoin: IVCoinResponse.fromJson(json['iv_coin']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'unix_id': unixId, 'role': role.toJson(), 'user_profile': userProfile.toJson(), 'iv_coin': ivCoin.toJson()};
  }

  @override
  List<Object?> get props => [id, unixId, role, userProfile, ivCoin];
}
