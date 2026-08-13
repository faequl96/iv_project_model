import 'package:equatable/equatable.dart';

class const CreateIVCoinPackageRequest({
  required final String name,
  required final int coinAmount,
  required final int idrPrice,
  required final List<int> discountCategoryIds,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'coin_amount': coinAmount,
      'idr_price': idrPrice,
      'discount_category_ids': discountCategoryIds,
    };
  }

  @override
  List<Object?> get props => [name, coinAmount, idrPrice, discountCategoryIds];
}

class const UpdateIVCoinPackageRequest({
  final String? name,
  final int? coinAmount,
  final int? idrPrice,
  final List<int>? discountCategoryIds,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (coinAmount != null) 'coin_amount': coinAmount,
      if (idrPrice != null) 'idr_price': idrPrice,
      if (discountCategoryIds != null) 'discount_category_ids': discountCategoryIds,
    };
  }

  @override
  List<Object?> get props => [name, coinAmount, idrPrice, discountCategoryIds];
}
