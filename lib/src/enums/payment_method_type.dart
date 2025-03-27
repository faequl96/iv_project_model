enum PaymentMethodType { ivCoin, manualTransfer, autoTransfer, gopay }

extension PaymentMethodTypeExtension on PaymentMethodType {
  String toJson() {
    switch (this) {
      case PaymentMethodType.ivCoin:
        return 'iv_coin';
      case PaymentMethodType.manualTransfer:
        return 'manual_transfer';
      case PaymentMethodType.autoTransfer:
        return 'auto_transfer';
      case PaymentMethodType.gopay:
        return 'gopay';
    }
  }

  static PaymentMethodType fromJson(String json) {
    switch (json) {
      case 'iv_coin':
        return PaymentMethodType.ivCoin;
      case 'manual_transfer':
        return PaymentMethodType.manualTransfer;
      case 'auto_transfer':
        return PaymentMethodType.autoTransfer;
      case 'gopay':
        return PaymentMethodType.gopay;
      default:
        return PaymentMethodType.ivCoin;
    }
  }
}
