import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';
import 'package:iv_project_model/src/models/user/user_response.dart';

class const ReviewResponse({
  required final int id,
  required final int star,
  required final String comment,
  final UserResponse? user,
  required final DateTime createdAt,
  final DateTime? updatedAt,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      star: json['star'],
      comment: json['comment'],
      user: json['user'] != null ? .fromJson(json['user']) : null,
      createdAt: DateTimeConverter.fromJson(json['created_at'])!,
      updatedAt: DateTimeConverter.fromJson(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'star': star,
      'comment': comment,
      'user': user?.toJson(),
      'created_at': DateTimeConverter.toJson(createdAt),
      'updated_at': DateTimeConverter.toJson(updatedAt),
    };
  }

  @override
  List<Object?> get props => [id, star, comment, user, createdAt, updatedAt];
}
