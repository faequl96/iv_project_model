import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/invitation_theme/invitation_theme_response.dart';
import 'package:iv_project_model/src/models/iv_coin_package/iv_coin_package_response.dart';

class const DiscountResponse({
  required final List<InvitationThemeResponse> invitationThemes,
  required final List<IVCoinPackageResponse> ivCoinPackages,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      invitationThemes: (json['invitation_themes'] as List)
          .map((e) => InvitationThemeResponse.fromJson(e))
          .toList(),
      ivCoinPackages: (json['iv_coin_packages'] as List)
          .map((e) => IVCoinPackageResponse.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'invitation_themes': invitationThemes.map((e) => e.toJson()).toList(),
      'iv_coin_packages': ivCoinPackages.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [invitationThemes, ivCoinPackages];
}
