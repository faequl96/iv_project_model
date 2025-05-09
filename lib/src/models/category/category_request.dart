import 'package:equatable/equatable.dart';

class CategoryRequest extends Equatable {
  const CategoryRequest({required this.name});

  final String name;

  Map<String, dynamic> toJson() {
    return {'name': name};
  }

  @override
  List<Object?> get props => [name];
}
