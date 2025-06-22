enum PaymentMethodType { ivCoin, gopay, qris, bankTransfer }

extension PaymentMethodTypeExtension on PaymentMethodType {
  String toJson() {
    switch (this) {
      case PaymentMethodType.ivCoin:
        return 'iv_coin';
      case PaymentMethodType.gopay:
        return 'gopay';
      case PaymentMethodType.qris:
        return 'qris';
      case PaymentMethodType.bankTransfer:
        return 'bank_transfer';
    }
  }

  static PaymentMethodType fromJson(String json) {
    switch (json) {
      case 'iv_coin':
        return PaymentMethodType.ivCoin;
      case 'gopay':
        return PaymentMethodType.gopay;
      case 'qris':
        return PaymentMethodType.qris;
      case 'bank_transfer':
        return PaymentMethodType.bankTransfer;
      default:
        return PaymentMethodType.ivCoin;
    }
  }

  String toLabel() {
    switch (this) {
      case PaymentMethodType.ivCoin:
        return 'IV Coin';
      case PaymentMethodType.gopay:
        return 'Gopay';
      case PaymentMethodType.qris:
        return 'QRIS';
      case PaymentMethodType.bankTransfer:
        return 'Bank Transfer';
    }
  }
}
