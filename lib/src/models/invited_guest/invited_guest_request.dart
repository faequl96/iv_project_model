import 'package:equatable/equatable.dart';

class CreateInvitedGuestRequest extends Equatable {
  const CreateInvitedGuestRequest({
    required this.invitationId,
    required this.nameInstance,
    required this.name,
    required this.instance,
    required this.nickname,
    required this.avatar,
    required this.attendance,
  });

  final int invitationId;
  final String nameInstance;
  final String name;
  final String instance;
  final String nickname;
  final String avatar;
  final String attendance;

  Map<String, dynamic> toJson() {
    return {
      'invitation_id': invitationId,
      'name_instance': nameInstance,
      'name': name,
      'instance': instance,
      'nickname': nickname,
      'avatar': avatar,
      'attendance': attendance,
    };
  }

  @override
  List<Object?> get props => [invitationId, nameInstance, name, instance, nickname, avatar, attendance];
}

class UpdateInvitedGuestRequest extends Equatable {
  const UpdateInvitedGuestRequest({this.nickname, this.avatar, this.attendance});

  final String? nickname;
  final String? avatar;
  final String? attendance;

  Map<String, dynamic> toJson() {
    return {
      if (nickname != null) 'nickname': nickname,
      if (avatar != null) 'avatar': avatar,
      if (attendance != null) 'attendance': attendance,
    };
  }

  @override
  List<Object?> get props => [nickname, avatar, attendance];
}
