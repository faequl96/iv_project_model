import 'package:equatable/equatable.dart';

class CheckInvitedGuestRequest extends Equatable {
  const CheckInvitedGuestRequest({required this.invitationId});

  final String invitationId;

  Map<String, dynamic> toJson() {
    return {'invitation_id': invitationId};
  }

  @override
  List<Object?> get props => [invitationId];
}

class CreateInvitedGuestRequest extends Equatable {
  const CreateInvitedGuestRequest({
    required this.invitationId,
    required this.phone,
    required this.name,
    required this.nameInstance,
    this.souvenir,
  });

  final String invitationId;
  final String phone;
  final String name;
  final String nameInstance;
  final String? souvenir;

  Map<String, dynamic> toJson() {
    return {
      'invitation_id': invitationId,
      'phone': phone,
      'name': name,
      'name_instance': nameInstance,
      if (souvenir != null) 'souvenir': souvenir,
    };
  }

  @override
  List<Object?> get props => [invitationId, phone, name, nameInstance, souvenir];
}

class UpdateInvitedGuestRequest extends Equatable {
  const UpdateInvitedGuestRequest({this.nickname, this.avatar, this.possiblePresence, this.attendance});

  final String? nickname;
  final String? avatar;
  final String? possiblePresence;
  final bool? attendance;

  Map<String, dynamic> toJson() {
    return {
      if (nickname != null) 'nickname': nickname,
      if (avatar != null) 'avatar': avatar,
      if (possiblePresence != null) 'possible_presence': possiblePresence,
      if (attendance != null) 'attendance': attendance,
    };
  }

  @override
  List<Object?> get props => [nickname, avatar, possiblePresence, attendance];
}

class BulkInvitedGuestRequest extends Equatable {
  const BulkInvitedGuestRequest({required this.invitedGuests});

  final List<CreateInvitedGuestRequest> invitedGuests;

  Map<String, dynamic> toJson() {
    return {'invited_guests': invitedGuests.map((e) => e.toJson()).toList()};
  }

  @override
  List<Object?> get props => [invitedGuests];
}
