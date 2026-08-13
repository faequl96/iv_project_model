import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const RSVPResponse({
  required final int id,
  required final InvitedGuestResponse invitedGuest,
  required final String message,
  required final DateTime createdAt,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      invitedGuest: .fromJson(json['invited_guest']),
      message: json['message'],
      createdAt: DateTimeConverter.fromJson(json['created_at'])!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'invited_guest': invitedGuest.toJson(),
      'message': message,
      'created_at': DateTimeConverter.toJson(createdAt),
    };
  }

  @override
  List<Object?> get props => [id, invitedGuest, message, createdAt];
}
