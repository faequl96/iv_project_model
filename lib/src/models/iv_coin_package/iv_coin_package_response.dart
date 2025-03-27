import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/discount_category/discount_category_response.dart';

class IVCoinPackageResponse extends Equatable {
  const IVCoinPackageResponse({
    required this.id,
    required this.name,
    required this.coinAmount,
    required this.idrPrice,
    required this.idrDiscountPrice,
    required this.discountCategories,
  });

  final int id;
  final String name;
  final int coinAmount;
  final int idrPrice;
  final int idrDiscountPrice;
  final List<DiscountCategoryResponse> discountCategories;

  factory IVCoinPackageResponse.fromJson(Map<String, dynamic> json) {
    return IVCoinPackageResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      coinAmount: json['coin_amount'] as int,
      idrPrice: json['idr_price'] as int,
      idrDiscountPrice: json['idr_discount_price'] as int,
      discountCategories: (json['discount_categories'] as List).map((e) => DiscountCategoryResponse.fromJson(e)).toList(),
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
