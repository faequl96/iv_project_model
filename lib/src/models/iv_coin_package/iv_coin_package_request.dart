import 'package:equatable/equatable.dart';

class CreateIVCoinPackageRequest extends Equatable {
  const CreateIVCoinPackageRequest({
    required this.name,
    required this.coinAmount,
    required this.idrPrice,
    required this.discountCategoryIds,
  });

  final String name;
  final int coinAmount;
  final int idrPrice;
  final List<int> discountCategoryIds;

  Map<String, dynamic> toJson() {
    return {'name': name, 'coin_amount': coinAmount, 'idr_price': idrPrice, 'discount_category_ids': discountCategoryIds};
  }

  @override
  List<Object?> get props => [name, coinAmount, idrPrice, discountCategoryIds];
}

class UpdateIVCoinPackageRequest extends Equatable {
  const UpdateIVCoinPackageRequest({this.name, this.coinAmount, this.idrPrice, this.discountCategoryIds});

  final String? name;
  final int? coinAmount;
  final int? idrPrice;
  final List<int>? discountCategoryIds;

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
