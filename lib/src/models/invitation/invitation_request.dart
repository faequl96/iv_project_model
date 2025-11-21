import 'dart:io';

import 'package:dio/dio.dart';
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
    this.coverImage,
    this.brideImage,
    this.groomImage,
    this.galleries = const [null, null, null, null, null, null, null, null, null, null, null, null],
  });

  final File? coverImage;
  final File? brideImage;
  final File? groomImage;
  final List<File?> galleries;

  Future<Map<String, dynamic>> toFormDataMap() async {
    final map = <String, dynamic>{};

    if (coverImage != null) map['cover_image'] = await MultipartFile.fromFile(coverImage!.path, filename: 'cover_image');
    if (brideImage != null) map['bride_image'] = await MultipartFile.fromFile(brideImage!.path, filename: 'bride_image');
    if (groomImage != null) map['groom_image'] = await MultipartFile.fromFile(groomImage!.path, filename: 'groom_image');
    for (int i = 0; i < galleries.length; i++) {
      final image = galleries[i];
      if (image != null) map['image_${i + 1}'] = await MultipartFile.fromFile(image.path, filename: 'image_${i + 1}');
    }

    return map;
  }

  @override
  List<Object?> get props => [coverImage, brideImage, groomImage, galleries];
}
