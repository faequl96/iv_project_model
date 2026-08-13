import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/product_type.dart';

class const CreateTransactionRequest({
  required final ProductType productType,
  required final String productId,
  required final String userId,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'product_type': productType.toJson(), 'product_id': productId, 'user_id': userId};
  }

  @override
  List<Object?> get props => [productType, productId, userId];
}

class const UpdateTransactionRequest({final String? paymentMethod, final String? voucherCodeName})
    extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (voucherCodeName != null) 'voucher_code_name': voucherCodeName,
    };
  }

  @override
  List<Object?> get props => [paymentMethod, voucherCodeName];
}
