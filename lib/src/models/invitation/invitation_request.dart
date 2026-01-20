import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class CreateInvitationRequest extends Equatable {
  const CreateInvitationRequest({required this.invitationThemeId, required this.invitationData});

  final int invitationThemeId;
  final CreateInvitationDataRequest invitationData;

  Map<String, dynamic> toJson() {
    return {'invitation_theme_id': invitationThemeId, 'invitation_data': invitationData.toJson()};
  }

  @override
  List<Object?> get props => [invitationThemeId, invitationData];
}

class UpdateInvitationRequest extends Equatable {
  const UpdateInvitationRequest({this.status, this.invitationData});

  final InvitationStatusType? status;
  final UpdateInvitationDataRequest? invitationData;

  Map<String, dynamic> toJson() {
    return {
      if (status != null) 'status': status!.toJson(),
      if (invitationData != null) 'invitation_data': invitationData!.toJson(),
    };
  }

  @override
  List<Object?> get props => [status, invitationData];
}

class InvitationImageRequest extends Equatable {
  const InvitationImageRequest({
    this.musicAudio,
    this.coverImage,
    this.brideImage,
    this.groomImage,
    this.galleries = const [null, null, null, null, null, null, null, null, null, null, null, null],
  });

  final File? musicAudio;
  final File? coverImage;
  final File? brideImage;
  final File? groomImage;
  final List<File?> galleries;

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
