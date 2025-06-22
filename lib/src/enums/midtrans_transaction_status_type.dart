enum MidtransTransactionStatusType { unknown, settlement, capture, pending, expire, cancel, deny }

extension MidtransTransactionStatusTypeExtension on MidtransTransactionStatusType {
  String toJson() {
    switch (this) {
      case MidtransTransactionStatusType.unknown:
        return 'unknown';
      case MidtransTransactionStatusType.pending:
        return 'pending';
      case MidtransTransactionStatusType.settlement:
        return 'settlement';
      case MidtransTransactionStatusType.capture:
        return 'capture';
      case MidtransTransactionStatusType.expire:
        return 'expire';
      case MidtransTransactionStatusType.cancel:
        return 'cancel';
      case MidtransTransactionStatusType.deny:
        return 'deny';
    }
  }

  static MidtransTransactionStatusType fromJson(String json) {
    switch (json) {
      case 'unknown':
        return MidtransTransactionStatusType.unknown;
      case 'pending':
        return MidtransTransactionStatusType.pending;
      case 'settlement':
        return MidtransTransactionStatusType.settlement;
      case 'capture':
        return MidtransTransactionStatusType.capture;
      case 'expire':
        return MidtransTransactionStatusType.expire;
      case 'cancel':
        return MidtransTransactionStatusType.cancel;
      case 'deny':
        return MidtransTransactionStatusType.deny;
      default:
        return MidtransTransactionStatusType.unknown;
    }
  }
}
