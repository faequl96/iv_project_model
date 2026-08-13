import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const InvitationResponse({
  required final String id,
  required final InvitationStatusType status,
  required final String transactionId,
  required final int invitationThemeId,
  required final String invitationThemeName,
  required final int remainingEditCount,
  required final BrandProfileResponse brandProfile,
  required final InvitationDataResponse invitationData,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      status: InvitationStatusTypeExtension.fromJson(json['status']),
      transactionId: json['transaction_id'],
      invitationThemeId: json['invitation_theme_id'],
      invitationThemeName: json['invitation_theme_name'],
      remainingEditCount: json['remaining_edit_count'],
      brandProfile: .fromJson(json['brand_profile']),
      invitationData: .fromJson(json['invitation_data']),
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
