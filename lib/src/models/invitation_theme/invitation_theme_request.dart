import 'package:equatable/equatable.dart';

class const CreateInvitationThemeRequest({
  required final String name,
  required final int idrPrice,
  required final int ivcPrice,
  required final List<int> categoryIds,
  required final List<int> discountCategoryIds,
}) extends Equatable {
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

class const UpdateInvitationThemeRequest({
  final String? name,
  final int? idrPrice,
  final int? ivcPrice,
  final List<int>? categoryIds,
  final List<int>? discountCategoryIds,
}) extends Equatable {
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
