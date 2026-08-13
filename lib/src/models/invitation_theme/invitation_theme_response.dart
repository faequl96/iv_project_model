import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const InvitationThemeResponse({
  required final int id,
  required final String name,
  required final int idrPrice,
  required final int idrDiscountPrice,
  required final int ivcPrice,
  required final int ivcDiscountPrice,
  required final int soldCount,
  required final List<String> userIds,
  required final List<CategoryResponse> categories,
  required final List<DiscountCategoryResponse> discountCategories,
  required final List<ReviewResponse> reviews,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'] as int,
      name: json['name'] as String,
      idrPrice: json['idr_price'] as int,
      idrDiscountPrice: json['idr_discount_price'] as int,
      ivcPrice: json['ivc_price'] as int,
      ivcDiscountPrice: json['ivc_discount_price'] as int,
      soldCount: json['sold_count'] as int,
      userIds: (json['user_ids'] as List).map((e) => e as String).toList(),
      categories: (json['categories'] as List).map((e) => CategoryResponse.fromJson(e)).toList(),
      discountCategories: (json['discount_categories'] as List)
          .map((e) => DiscountCategoryResponse.fromJson(e))
          .toList(),
      reviews: (json['reviews'] as List).map((e) => ReviewResponse.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'idr_price': idrPrice,
      'idr_discount_price': idrDiscountPrice,
      'ivc_price': ivcPrice,
      'ivc_discount_price': ivcDiscountPrice,
      'sold_count': soldCount,
      'user_ids': userIds.map((e) => e).toList(),
      'categories': categories.map((e) => e.toJson()).toList(),
      'discount_categories': discountCategories.map((e) => e.toJson()).toList(),
      'reviews': reviews.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
    id,
    name,
    idrPrice,
    idrDiscountPrice,
    ivcPrice,
    ivcDiscountPrice,
    soldCount,
    userIds,
    categories,
    discountCategories,
    reviews,
  ];
}
