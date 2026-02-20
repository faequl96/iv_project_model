enum TransactionStatusType { created, pending, confirmed, canceled }

extension TransactionStatusTypeExtension on TransactionStatusType {
  String toJson() {
    switch (this) {
      case .created:
        return 'created';
      case .pending:
        return 'pending';
      case .confirmed:
        return 'confirmed';
      case .canceled:
        return 'canceled';
    }
  }

  static TransactionStatusType fromJson(String json) {
    switch (json) {
      case 'created':
        return .created;
      case 'pending':
        return .pending;
      case 'confirmed':
        return .confirmed;
      case 'canceled':
        return .canceled;
      default:
        return .created;
    }
  }
}
