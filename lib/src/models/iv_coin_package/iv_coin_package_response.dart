import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/discount_category/discount_category_response.dart';

class const IVCoinPackageResponse({
  required final String id,
  required final String name,
  required final int coinAmount,
  required final int idrPrice,
  required final int idrDiscountPrice,
  required final List<DiscountCategoryResponse> discountCategories,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      name: json['name'],
      coinAmount: json['coin_amount'],
      idrPrice: json['idr_price'],
      idrDiscountPrice: json['idr_discount_price'] as int,
      discountCategories: (json['discount_categories'] as List)
          .map((e) => DiscountCategoryResponse.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'coin_amount': coinAmount,
      'idr_price': idrPrice,
      'idr_discount_price': idrDiscountPrice,
      'discount_categories': discountCategories.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [id, name, coinAmount, idrPrice, idrDiscountPrice, discountCategories];
}
