import 'package:equatable/equatable.dart';

class RSVPResponse extends Equatable {
  const RSVPResponse({
    required this.id,
    required this.invitationId,
    required this.invitedGuestId,
    required this.nickname,
    required this.avatar,
    required this.invited,
    required this.attendance,
    required this.message,
  });

  final int id;
  final int invitationId;
  final String invitedGuestId;
  final String nickname;
  final String avatar;
  final bool invited;
  final String attendance;
  final String message;

  factory RSVPResponse.fromJson(Map<String, dynamic> json) {
    return RSVPResponse(
      id: json['id'],
      invitationId: json['invitation_id'],
      invitedGuestId: json['invited_guest_id'],
      nickname: json['nickname'],
      avatar: json['avatar'],
      invited: json['invited'],
      attendance: json['attendance'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'invitation_id': invitationId,
      'invited_guest_id': invitedGuestId,
      'nickname': nickname,
      'avatar': avatar,
      'invited': invited,
      'attendance': attendance,
      'message': message,
    };
  }

  @override
  List<Object?> get props => [id, invitationId, invitedGuestId, nickname, avatar, invited, attendance, message];
}
