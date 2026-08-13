import 'package:equatable/equatable.dart';

class const VoucherCodeRequest({
  required final String name,
  required final int discountPercentage,
  required final int usageLimitPerUser,
  required final bool isGlobal,
  final List<String> userIds = const [],
}) extends Equatable {
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
