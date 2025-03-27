import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/category/category_response.dart';
import 'package:iv_project_model/src/models/discount_category/discount_category_response.dart';

class InvitationThemeResponse extends Equatable {
  const InvitationThemeResponse({
    required this.id,
    required this.name,
    required this.idrPrice,
    required this.idrDiscountPrice,
    required this.ivcPrice,
    required this.ivcDiscountPrice,
    required this.categories,
    required this.discountCategories,
  });

  final int id;
  final String name;
  final int idrPrice;
  final int idrDiscountPrice;
  final int ivcPrice;
  final int ivcDiscountPrice;
  final List<CategoryResponse> categories;
  final List<DiscountCategoryResponse> discountCategories;

  factory InvitationThemeResponse.fromJson(Map<String, dynamic> json) {
    return InvitationThemeResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      idrPrice: json['idr_price'] as int,
      idrDiscountPrice: json['idr_discount_price'] as int,
      ivcPrice: json['ivc_price'] as int,
      ivcDiscountPrice: json['ivc_discount_price'] as int,
      categories: (json['categories'] as List).map((e) => CategoryResponse.fromJson(e)).toList(),
      discountCategories: (json['discount_categories'] as List).map((e) => DiscountCategoryResponse.fromJson(e)).toList(),
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
      'categories': categories.map((e) => e.toJson()).toList(),
      'discount_categories': discountCategories.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [id, name, idrPrice, idrDiscountPrice, ivcPrice, ivcDiscountPrice, categories, discountCategories];
}
