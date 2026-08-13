import 'package:equatable/equatable.dart';

class const RSVPRequest({
  required final String invitationId,
  required final String invitedGuestId,
  required final String message,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'invitation_id': invitationId, 'invited_guest_id': invitedGuestId, 'message': message};
  }

  @override
  List<Object?> get props => [invitationId, invitedGuestId, message];
}
