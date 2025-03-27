import 'package:equatable/equatable.dart';

class DiscountCategoryResponse extends Equatable {
  const DiscountCategoryResponse({required this.id, required this.name});

  final int id;
  final String name;

  factory DiscountCategoryResponse.fromJson(Map<String, dynamic> json) {
    return DiscountCategoryResponse(id: json['id'] as int, name: json['name'] as String);
  }

  @override
  List<Object?> get props => [id, name];
}
