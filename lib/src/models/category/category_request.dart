import 'package:equatable/equatable.dart';

class const CategoryRequest({required final String name}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'name': name};
  }

  @override
  List<Object?> get props => [name];
}
