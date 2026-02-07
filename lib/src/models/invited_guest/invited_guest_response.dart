import 'package:equatable/equatable.dart';

class InvitedGuestResponse extends Equatable {
  const InvitedGuestResponse({
    required this.id,
    this.phone,
    required this.nickname,
    required this.nameInstance,
    required this.invited,
    this.avatar,
    this.possiblePresence = '',
    this.attendance,
    this.souvenir,
  });

  final String id;
  final String? phone;
  final String nickname;
  final String nameInstance;
  final bool invited;
  final String? avatar;
  final String? possiblePresence;
  final bool? attendance;
  final String? souvenir;

  factory InvitedGuestResponse.fromJson(Map<String, dynamic> json) {
    return InvitedGuestResponse(
      id: json['id'],
      phone: json['phone'],
      nickname: json['nickname'],
      nameInstance: json['name_instance'],
      invited: json['invited'],
      avatar: json['avatar'],
      possiblePresence: json['possible_presence'],
      attendance: json['attendance'],
      souvenir: json['souvenir'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phone': phone,
      'nickname': nickname,
      'name_instance': nameInstance,
      'invited': invited,
      'avatar': avatar,
      'possible_presence': possiblePresence,
      'attendance': attendance,
      'souvenir': souvenir,
    };
  }

  @override
  List<Object?> get props => [id, phone, nickname, nameInstance, invited, avatar, possiblePresence, attendance, souvenir];
}
