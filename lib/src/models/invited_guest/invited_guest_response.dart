import 'package:equatable/equatable.dart';

class InvitedGuestResponse extends Equatable {
  const InvitedGuestResponse({
    required this.id,
    required this.invitationId,
    required this.nameInstance,
    required this.name,
    required this.instance,
    required this.nickname,
    required this.avatar,
    required this.attendance,
  });

  final int id;
  final int invitationId;
  final String nameInstance;
  final String name;
  final String instance;
  final String nickname;
  final String avatar;
  final String attendance;

  factory InvitedGuestResponse.fromJson(Map<String, dynamic> json) {
    return InvitedGuestResponse(
      id: json['id'],
      invitationId: json['invitation_id'],
      nameInstance: json['name_instance'],
      name: json['name'],
      instance: json['instance'],
      nickname: json['nickname'],
      avatar: json['avatar'],
      attendance: json['attendance'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
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
  List<Object?> get props => [id, invitationId, nameInstance, name, instance, nickname, avatar, attendance];
}
