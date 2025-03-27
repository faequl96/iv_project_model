import 'package:equatable/equatable.dart';

class DiscountRequest extends Equatable {
  const DiscountRequest({required this.discountCategoryId, required this.percentage});

  final int discountCategoryId;
  final int percentage;

  Map<String, dynamic> toJson() {
    return {'discount_category_id': discountCategoryId, 'percentage': percentage};
  }

  @override
  List<Object?> get props => [discountCategoryId, percentage];
}
