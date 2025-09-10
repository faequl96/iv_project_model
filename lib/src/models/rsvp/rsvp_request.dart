import 'package:equatable/equatable.dart';

class RSVPRequest extends Equatable {
  const RSVPRequest({
    required this.invitationId,
    required this.invitedGuestId,
    required this.nickname,
    required this.avatar,
    required this.invited,
    required this.attendance,
    required this.message,
  });

  final int invitationId;
  final String invitedGuestId;
  final String nickname;
  final String avatar;
  final bool invited;
  final String attendance;
  final String message;

  Map<String, dynamic> toJson() {
    return {
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
  List<Object?> get props => [invitationId, invitedGuestId, nickname, avatar, invited, attendance, message];
}
