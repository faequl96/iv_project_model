import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/user_role_type.dart';
import 'package:iv_project_model/src/models/iv_coin/iv_coin_response.dart';
import 'package:iv_project_model/src/models/user_profile/user_profile_response.dart';

class UserResponse extends Equatable {
  const UserResponse({required this.id, required this.role, required this.userProfile, required this.ivCoin});

  final String id;
  final UserRoleType role;
  final UserProfileResponse? userProfile;
  final IVCoinResponse? ivCoin;

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json['id'] as String,
      role: UserRoleTypeExtension.fromJson(json['role']),
      userProfile: json['user_profile'] != null ? UserProfileResponse.fromJson(json['user_profile']) : null,
      ivCoin: json['iv_coin'] != null ? IVCoinResponse.fromJson(json['iv_coin']) : null,
    );
  }

  @override
  List<Object?> get props => [id, role, userProfile, ivCoin];
}
