import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/invitation_data/invitation_data_response.dart';

class InvitationResponse extends Equatable {
  const InvitationResponse({
    required this.id,
    required this.status,
    required this.invitationThemeId,
    required this.invitationThemeName,
    this.invitationData,
  });

  final int id;
  final String status;
  final int invitationThemeId;
  final String invitationThemeName;
  final InvitationDataResponse? invitationData;

  factory InvitationResponse.fromJson(Map<String, dynamic> json) {
    return InvitationResponse(
      id: json['id'],
      status: json['status'],
      invitationThemeId: json['invitation_theme_id'],
      invitationThemeName: json['invitation_theme_name'],
      invitationData: json['invitation_data'] != null ? InvitationDataResponse.fromJson(json['invitation_data']) : null,
    );
  }

  @override
  List<Object?> get props => [id, status, invitationThemeId, invitationThemeName, invitationData];
}
