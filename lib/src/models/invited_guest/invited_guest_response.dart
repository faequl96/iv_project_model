import 'package:equatable/equatable.dart';

class InvitedGuestResponse extends Equatable {
  const InvitedGuestResponse({
    required this.id,
    this.uniqueId,
    this.phone,
    required this.name,
    this.nickname,
    required this.nameInstance,
    required this.invited,
    this.avatar,
    this.possiblePresence = '',
    this.attendance,
    this.souvenir,
    this.nominal,
  });

  final String id;
  final String? uniqueId;
  final String? phone;
  final String name;
  final String? nickname;
  final String nameInstance;
  final bool invited;
  final String? avatar;
  final String? possiblePresence;
  final bool? attendance;
  final String? souvenir;
  final int? nominal;

  factory InvitedGuestResponse.fromJson(Map<String, dynamic> json) {
    return InvitedGuestResponse(
      id: json['id'],
      uniqueId: json['unique_id'],
      phone: json['phone'],
      name: json['name'],
      nickname: json['nickname'],
      nameInstance: json['name_instance'],
      invited: json['invited'],
      avatar: json['avatar'],
      possiblePresence: json['possible_presence'],
      attendance: json['attendance'],
      souvenir: json['souvenir'],
      nominal: json['nominal'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'unique_id': uniqueId,
      'phone': phone,
      'name': name,
      'nickname': nickname,
      'name_instance': nameInstance,
      'invited': invited,
      'avatar': avatar,
      'possible_presence': possiblePresence,
      'attendance': attendance,
      'souvenir': souvenir,
      'nominal': nominal,
    };
  }

  @override
  List<Object?> get props => [
    id,
    uniqueId,
    phone,
    name,
    nickname,
    nameInstance,
    invited,
    avatar,
    possiblePresence,
    attendance,
    souvenir,
    nominal,
  ];
}
