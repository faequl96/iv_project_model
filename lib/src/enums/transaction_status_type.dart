enum TransactionStatusType { created, pending, confirmed, canceled }

extension TransactionStatusTypeExtension on TransactionStatusType {
  String toJson() => switch (this) {
    .created => 'created',
    .pending => 'pending',
    .confirmed => 'confirmed',
    .canceled => 'canceled',
  };

  static TransactionStatusType fromJson(String json) => switch (json) {
    'created' => .created,
    'pending' => .pending,
    'confirmed' => .confirmed,
    'canceled' => .canceled,
    String() => .created,
  };
}
