import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/invitation_theme/invitation_theme_response.dart';
import 'package:iv_project_model/src/models/iv_coin_package/iv_coin_package_response.dart';

class DiscountResponse extends Equatable {
  const DiscountResponse({required this.invitationThemes, required this.ivCoinPackages});

  final List<InvitationThemeResponse> invitationThemes;
  final List<IVCoinPackageResponse> ivCoinPackages;

  factory DiscountResponse.fromJson(Map<String, dynamic> json) {
    return DiscountResponse(
      invitationThemes: (json['invitation_themes'] as List).map((e) => InvitationThemeResponse.fromJson(e)).toList(),
      ivCoinPackages: (json['iv_coin_packages'] as List).map((e) => IVCoinPackageResponse.fromJson(e)).toList(),
    );
  }

  @override
  List<Object?> get props => [invitationThemes, ivCoinPackages];
}
