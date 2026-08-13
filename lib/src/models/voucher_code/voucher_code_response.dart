import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const VoucherCodeResponse({
  required final int id,
  required final String name,
  required final int discountPercentage,
  required final int usageLimitPerUser,
  required final bool isGlobal,
  final List<UserResponse> users = const [],
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      name: json['name'],
      discountPercentage: json['discount_percentage'],
      usageLimitPerUser: json['usage_limit_per_user'],
      isGlobal: json['is_global'] ?? false,
      users: (json['users'] as List).map((json) => UserResponse.fromJson(json)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'discount_percentage': discountPercentage,
      'usage_limit_per_user': usageLimitPerUser,
      'is_global': isGlobal,
      'users': users.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [id, name, discountPercentage, usageLimitPerUser, isGlobal, users];
}
