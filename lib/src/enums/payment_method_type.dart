enum PaymentMethodType { ivCoin, gopay, qris, bankTransfer }

extension PaymentMethodTypeExtension on PaymentMethodType {
  String toJson() {
    switch (this) {
      case .ivCoin:
        return 'iv_coin';
      case .gopay:
        return 'gopay';
      case .qris:
        return 'qris';
      case .bankTransfer:
        return 'bank_transfer';
    }
  }

  static PaymentMethodType fromJson(String json) {
    switch (json) {
      case 'iv_coin':
        return .ivCoin;
      case 'gopay':
        return .gopay;
      case 'qris':
        return .qris;
      case 'bank_transfer':
        return .bankTransfer;
      default:
        return .ivCoin;
    }
  }

  String toLabel() {
    switch (this) {
      case .ivCoin:
        return 'IV COIN';
      case .gopay:
        return 'Gopay';
      case .qris:
        return 'QRIS';
      case .bankTransfer:
        return 'Bank Transfer';
    }
  }
}
