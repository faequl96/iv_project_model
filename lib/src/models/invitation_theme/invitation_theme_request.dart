import 'package:equatable/equatable.dart';

class CreateInvitationThemeRequest extends Equatable {
  const CreateInvitationThemeRequest({
    required this.name,
    required this.idrPrice,
    required this.ivcPrice,
    required this.categoryIds,
    required this.discountCategoryIds,
  });

  final String name;
  final int idrPrice;
  final int ivcPrice;
  final List<int> categoryIds;
  final List<int> discountCategoryIds;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'idr_price': idrPrice,
      'ivc_price': ivcPrice,
      'category_ids': categoryIds,
      'discount_category_ids': discountCategoryIds,
    };
  }

  @override
  List<Object?> get props => [name, idrPrice, ivcPrice, categoryIds, discountCategoryIds];
}

class UpdateInvitationThemeRequest extends Equatable {
  const UpdateInvitationThemeRequest({this.name, this.idrPrice, this.ivcPrice, this.categoryIds, this.discountCategoryIds});

  final String? name;
  final int? idrPrice;
  final int? ivcPrice;
  final List<int>? categoryIds;
  final List<int>? discountCategoryIds;

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      if (idrPrice != null) 'idr_price': idrPrice,
      if (ivcPrice != null) 'ivc_price': ivcPrice,
      if (categoryIds != null) 'category_ids': categoryIds,
      if (discountCategoryIds != null) 'discount_category_ids': discountCategoryIds,
    };
  }

  @override
  List<Object?> get props => [name, idrPrice, ivcPrice, categoryIds, discountCategoryIds];
}
