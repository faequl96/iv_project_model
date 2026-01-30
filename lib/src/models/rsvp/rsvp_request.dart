import 'package:equatable/equatable.dart';

class RSVPRequest extends Equatable {
  const RSVPRequest({required this.invitationId, required this.invitedGuestId, required this.message});

  final String invitationId;
  final String invitedGuestId;
  final String message;

  Map<String, dynamic> toJson() {
    return {'invitation_id': invitationId, 'invited_guest_id': invitedGuestId, 'message': message};
  }

  @override
  List<Object?> get props => [invitationId, invitedGuestId, message];
}
