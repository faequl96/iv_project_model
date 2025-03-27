import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/invitation_data/invitation_data_request.dart';

class CreateInvitationRequest extends Equatable {
  const CreateInvitationRequest({required this.invitationData, required this.userId, required this.invitationThemeId});

  final CreateInvitationDataRequest invitationData;
  final String userId;
  final int invitationThemeId;

  Map<String, dynamic> toJson() {
    return {'invitation_data': invitationData.toJson(), 'user_id': userId, 'invitation_theme_id': invitationThemeId};
  }

  @override
  List<Object?> get props => [invitationData, userId, invitationThemeId];
}

class UpdateInvitationRequest extends Equatable {
  const UpdateInvitationRequest({this.status, this.invitationData});

  final String? status;
  final UpdateInvitationDataRequest? invitationData;

  Map<String, dynamic> toJson() {
    return {if (status != null) 'status': status, if (invitationData != null) 'invitation_data': invitationData!.toJson()};
  }

  @override
  List<Object?> get props => [status, invitationData];
}
