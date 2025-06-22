import 'package:equatable/equatable.dart';

class VoucherCodeRequest extends Equatable {
  const VoucherCodeRequest({
    required this.name,
    required this.discountPercentage,
    required this.usageLimitPerUser,
    required this.isGlobal,
    this.userIds = const [],
  });

  final String name;
  final int discountPercentage;
  final int usageLimitPerUser;
  final bool isGlobal;
  final List<String> userIds;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'discount_percentage': discountPercentage,
      'usage_limit_per_user': usageLimitPerUser,
      'is_global': isGlobal,
      'user_ids': userIds,
    };
  }

  @override
  List<Object?> get props => [name, discountPercentage, usageLimitPerUser, isGlobal, userIds];
}
