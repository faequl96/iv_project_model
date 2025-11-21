import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class InvitationResponse extends Equatable {
  const InvitationResponse({
    required this.id,
    required this.status,
    required this.transactionId,
    required this.invitationThemeId,
    required this.invitationThemeName,
    required this.remainingEditCount,
    required this.brandProfile,
    required this.invitationData,
  });

  final String id;
  final InvitationStatusType status;
  final String transactionId;
  final int invitationThemeId;
  final String invitationThemeName;
  final int remainingEditCount;
  final BrandProfileResponse brandProfile;
  final InvitationDataResponse invitationData;

  factory InvitationResponse.fromJson(Map<String, dynamic> json) {
    return InvitationResponse(
      id: json['id'],
      status: InvitationStatusTypeExtension.fromJson(json['status']),
      transactionId: json['transaction_id'],
      invitationThemeId: json['invitation_theme_id'],
      invitationThemeName: json['invitation_theme_name'],
      remainingEditCount: json['remaining_edit_count'],
      brandProfile: BrandProfileResponse.fromJson(json['brand_profile']),
      invitationData: InvitationDataResponse.fromJson(json['invitation_data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'status': status.toJson(),
      'transaction_id': transactionId,
      'invitation_theme_id': invitationThemeId,
      'invitation_theme_name': invitationThemeName,
      'remaining_edit_count': remainingEditCount,
      'brand_profile': brandProfile.toJson(),
      'invitation_data': invitationData.toJson(),
    };
  }

  @override
  List<Object?> get props => [
    id,
    status,
    transactionId,
    invitationThemeId,
    invitationThemeName,
    remainingEditCount,
    brandProfile,
    invitationData,
  ];
}
