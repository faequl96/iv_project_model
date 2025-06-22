import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class VoucherCodeResponse extends Equatable {
  const VoucherCodeResponse({
    required this.id,
    required this.name,
    required this.discountPercentage,
    required this.usageLimitPerUser,
    required this.isGlobal,
    this.users = const [],
  });

  final int id;
  final String name;
  final int discountPercentage;
  final int usageLimitPerUser;
  final bool isGlobal;
  final List<UserResponse> users;

  factory VoucherCodeResponse.fromJson(Map<String, dynamic> json) {
    print(json['users']);
    return VoucherCodeResponse(
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
      'users': users,
    };
  }

  @override
  List<Object?> get props => [id, name, discountPercentage, usageLimitPerUser, isGlobal, users];
}
