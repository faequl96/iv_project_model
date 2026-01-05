import 'package:equatable/equatable.dart';

class RSVPRequest extends Equatable {
  const RSVPRequest({
    required this.invitationId,
    required this.invitedGuestId,
    required this.message,
    this.nickname,
    this.avatar,
    this.possiblePresence,
  });

  final String invitationId;
  final String invitedGuestId;
  final String message;
  final String? nickname;
  final String? avatar;
  final String? possiblePresence;

  Map<String, dynamic> toJson() {
    return {
      'invitation_id': invitationId,
      'invited_guest_id': invitedGuestId,
      'message': message,
      'nickname': nickname,
      'avatar': avatar,
      'possible_presence': possiblePresence,
    };
  }

  @override
  List<Object?> get props => [invitationId, invitedGuestId, message, nickname, avatar, possiblePresence];
}
