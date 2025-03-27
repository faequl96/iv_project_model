import 'package:equatable/equatable.dart';

class DiscountCategoryRequest extends Equatable {
  const DiscountCategoryRequest({required this.name});

  final String name;

  Map<String, dynamic> toJson() {
    return {'name': name};
  }

  @override
  List<Object?> get props => [name];
}
