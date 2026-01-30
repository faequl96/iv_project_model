import 'package:equatable/equatable.dart';

class CheckInvitedGuestRequest extends Equatable {
  const CheckInvitedGuestRequest({this.id});

  final String? id;

  Map<String, dynamic> toJson() {
    return {'id': id};
  }

  @override
  List<Object?> get props => [id];
}

class CreateInvitedGuestRequest extends Equatable {
  const CreateInvitedGuestRequest({
    required this.invitationId,
    this.excelNumber,
    required this.phone,
    required this.name,
    required this.nameInstance,
    this.souvenir,
  });

  final String invitationId;
  final String? excelNumber;
  final String phone;
  final String name;
  final String nameInstance;
  final String? souvenir;

  Map<String, dynamic> toJson() {
    return {
      'invitation_id': invitationId,
      'excel_number': excelNumber,
      'phone': phone,
      'name': name,
      'name_instance': nameInstance,
      if (souvenir != null) 'souvenir': souvenir,
    };
  }

  @override
  List<Object?> get props => [invitationId, excelNumber, phone, name, nameInstance, souvenir];
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
