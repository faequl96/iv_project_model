enum MidtransTransactionStatusType() {
  unknown,
  settlement,
  capture,
  pending,
  expire,
  cancel,
  deny
}

extension MidtransTransactionStatusTypeExtension on MidtransTransactionStatusType {
  String toJson() => switch (this) {
    .unknown => 'unknown',
    .pending => 'pending',
    .settlement => 'settlement',
    .capture => 'capture',
    .expire => 'expire',
    .cancel => 'cancel',
    .deny => 'deny',
  };

  static MidtransTransactionStatusType fromJson(String json) => switch (json) {
    'unknown' => .unknown,
    'pending' => .pending,
    'settlement' => .settlement,
    'capture' => .capture,
    'expire' => .expire,
    'cancel' => .cancel,
    'deny' => .deny,
    String() => .unknown,
  };
}
