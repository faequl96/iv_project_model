import 'package:equatable/equatable.dart';

class const InvitedGuestResponse({
  required final String id,
  final String? uniqueId,
  final String? phone,
  required final String name,
  final String? nickname,
  required final String nameInstance,
  required final bool invited,
  final String? avatar,
  final String? possiblePresence = '',
  final bool? attendance,
  final String? souvenir,
  final int? nominal,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
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
