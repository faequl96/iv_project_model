import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';
import 'package:iv_project_model/src/models/user/user_response.dart';

class ReviewResponse extends Equatable {
  const ReviewResponse({
    required this.id,
    required this.star,
    required this.comment,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final int star;
  final String comment;
  final UserResponse? user;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) {
    return ReviewResponse(
      id: json['id'],
      star: json['star'],
      comment: json['comment'],
      user: json['user'] != null ? UserResponse.fromJson(json['user']) : null,
      createdAt: DateTimeConverter.fromJson(json['created_at']),
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
