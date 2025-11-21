import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class RSVPResponse extends Equatable {
  const RSVPResponse({
    required this.id,
    required this.invitedGuest,
    required this.message,
    required this.createdAt,
    this.nickname,
    this.possiblePresence,
  });

  final int id;
  final InvitedGuestResponse invitedGuest;
  final String message;
  final DateTime createdAt;
  final String? nickname;
  final String? possiblePresence;

  factory RSVPResponse.fromJson(Map<String, dynamic> json) {
    return RSVPResponse(
      id: json['id'],
      invitedGuest: InvitedGuestResponse.fromJson(json['invited_guest']),
      message: json['message'],
      createdAt: DateTimeConverter.fromJson(json['created_at'])!,
      nickname: json['nickname'],
      possiblePresence: json['possible_presence'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'invited_guest': invitedGuest.toJson(),
      'message': message,
      'created_at': DateTimeConverter.toJson(createdAt),
      'nickname': nickname,
      'possible_presence': possiblePresence,
    };
  }

  @override
  List<Object?> get props => [id, invitedGuest, message, createdAt, nickname, possiblePresence];
}
