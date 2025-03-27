import 'package:equatable/equatable.dart';

class VoucherCodeResponse extends Equatable {
  const VoucherCodeResponse({required this.id, required this.name, required this.discountPercentage});

  final int id;
  final String name;
  final int discountPercentage;

  factory VoucherCodeResponse.fromJson(Map<String, dynamic> json) {
    return VoucherCodeResponse(id: json['id'], name: json['name'], discountPercentage: json['discount_percentage']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'discount_percentage': discountPercentage};
  }

  @override
  List<Object?> get props => [id, name, discountPercentage];
}
