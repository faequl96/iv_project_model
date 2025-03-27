import 'package:equatable/equatable.dart';

class CategoryResponse extends Equatable {
  const CategoryResponse({required this.id, required this.name});

  final int id;
  final String name;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) {
    return CategoryResponse(id: json['id'] as int, name: json['name'] as String);
  }

  @override
  List<Object?> get props => [id, name];
}
