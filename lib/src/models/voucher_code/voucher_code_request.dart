import 'package:equatable/equatable.dart';

class VoucherCodeRequest extends Equatable {
  const VoucherCodeRequest({required this.name, required this.discountPercentage});

  final String name;
  final int discountPercentage;

  Map<String, dynamic> toJson() {
    return {'name': name, 'discount_percentage': discountPercentage};
  }

  @override
  List<Object?> get props => [name, discountPercentage];
}
