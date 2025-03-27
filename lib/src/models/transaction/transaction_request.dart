import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/product_type.dart';

class CreateTransactionRequest extends Equatable {
  const CreateTransactionRequest({required this.productType, required this.productId, required this.userId});

  final ProductType productType;
  final int productId;
  final String userId;

  Map<String, dynamic> toJson() {
    return {'product_type': productType.toJson(), 'product_id': productId, 'user_id': userId};
  }

  @override
  List<Object?> get props => [productType, productId, userId];
}

class UpdateTransactionRequest extends Equatable {
  const UpdateTransactionRequest({this.paymentMethod, this.voucherCodeId});

  final String? paymentMethod;
  final int? voucherCodeId;

  Map<String, dynamic> toJson() {
    return {
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (voucherCodeId != null) 'voucher_code_id': voucherCodeId,
    };
  }

  @override
  List<Object?> get props => [paymentMethod, voucherCodeId];
}
