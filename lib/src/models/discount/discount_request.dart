import 'package:equatable/equatable.dart';

class const DiscountRequest({required final int discountCategoryId, required final int percentage})
    extends Equatable {
  Map<String, dynamic> toJson() {
    return {'discount_category_id': discountCategoryId, 'percentage': percentage};
  }

  @override
  List<Object?> get props => [discountCategoryId, percentage];
}
