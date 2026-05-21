enum PaymentMethodType { ivCoin, gopay, qris, bankTransfer }

extension PaymentMethodTypeExtension on PaymentMethodType {
  String toJson() => switch (this) {
    .ivCoin => 'iv_coin',
    .gopay => 'gopay',
    .qris => 'qris',
    .bankTransfer => 'bank_transfer',
  };

  static PaymentMethodType fromJson(String json) => switch (json) {
    'iv_coin' => .ivCoin,
    'gopay' => .gopay,
    'qris' => .qris,
    'bank_transfer' => .bankTransfer,
    String() => .ivCoin,
  };

  String toLabel() => switch (this) {
    .ivCoin => 'IV COIN',
    .gopay => 'Gopay',
    .qris => 'QRIS',
    .bankTransfer => 'Bank Transfer',
  };
}
