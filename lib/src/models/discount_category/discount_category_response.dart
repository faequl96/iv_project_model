import 'package:equatable/equatable.dart';

class const DiscountCategoryResponse({required final int id, required final String name})
    extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(id: json['id'] as int, name: json['name'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }

  @override
  List<Object?> get props => [id, name];
}
