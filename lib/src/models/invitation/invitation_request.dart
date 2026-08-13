import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const CreateInvitationRequest({
  required final int invitationThemeId,
  required final InvitationDataRequest invitationData,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'invitation_theme_id': invitationThemeId, 'invitation_data': invitationData.toJson()};
  }

  @override
  List<Object?> get props => [invitationThemeId, invitationData];
}

class const UpdateInvitationRequest({
  final InvitationStatusType? status,
  final InvitationDataRequest? invitationData,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      if (status != null) 'status': status!.toJson(),
      if (invitationData != null) 'invitation_data': invitationData!.toJson(),
    };
  }

  @override
  List<Object?> get props => [status, invitationData];
}

class const InvitationImageRequest({
  final File? musicAudio,
  final File? coverImage,
  final File? brideImage,
  final File? groomImage,
  final List<File?> galleries = const [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
  ],
}) extends Equatable {
  Future<Map<String, dynamic>> toFormDataMap(
    Future<Map<String, dynamic>> Function(
      File? musicAudio,
      File? coverImage,
      File? brideImage,
      File? groomImage,
      List<File?> galleries,
    )
    getValue,
  ) {
    return getValue(musicAudio, coverImage, brideImage, groomImage, galleries);
  }

  @override
  List<Object?> get props => [musicAudio, coverImage, brideImage, groomImage, galleries];
}
