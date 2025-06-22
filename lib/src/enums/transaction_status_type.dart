enum TransactionStatusType { created, pending, confirmed, canceled }

extension TransactionStatusTypeExtension on TransactionStatusType {
  String toJson() {
    switch (this) {
      case TransactionStatusType.created:
        return 'created';
      case TransactionStatusType.pending:
        return 'pending';
      case TransactionStatusType.confirmed:
        return 'confirmed';
      case TransactionStatusType.canceled:
        return 'canceled';
    }
  }

  static TransactionStatusType fromJson(String json) {
    switch (json) {
      case 'created':
        return TransactionStatusType.created;
      case 'pending':
        return TransactionStatusType.pending;
      case 'confirmed':
        return TransactionStatusType.confirmed;
      case 'canceled':
        return TransactionStatusType.canceled;
      default:
        return TransactionStatusType.created;
    }
  }
}
