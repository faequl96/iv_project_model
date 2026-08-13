import 'package:equatable/equatable.dart';

class const CheckInvitedGuestRequest({final String? id}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'id': id};
  }

  @override
  List<Object?> get props => [id];
}

class const CreateInvitedGuestRequest({
  required final String invitationId,
  required final String phone,
  required final String name,
  required final String nameInstance,
  final String? souvenir,
}) extends Equatable {
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

class const EditInvitedGuestRequest({
  required final String id,
  required final String invitationId,
  required final String phone,
  required final String name,
  required final String nameInstance,
  final String? souvenir,
  final int? nominal,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'invitation_id': invitationId,
      'phone': phone,
      'name': name,
      'name_instance': nameInstance,
      if (souvenir != null) 'souvenir': souvenir,
      if (nominal != null) 'nominal': nominal,
    };
  }

  @override
  List<Object?> get props => [id, invitationId, phone, name, nameInstance, souvenir, nominal];
}

class const UpdateInvitedGuestRequest({
  final String? nickname,
  final String? avatar,
  final String? possiblePresence,
  final bool? attendance,
}) extends Equatable {
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

class const BulkCreateInvitedGuestRequest({
  required final List<CreateInvitedGuestRequest> invitedGuests,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'invited_guests': invitedGuests.map((e) => e.toJson()).toList()};
  }

  @override
  List<Object?> get props => [invitedGuests];
}

class const BulkEditInvitedGuestRequest({
  required final List<EditInvitedGuestRequest> invitedGuests,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'invited_guests': invitedGuests.map((e) => e.toJson()).toList()};
  }

  @override
  List<Object?> get props => [invitedGuests];
}
