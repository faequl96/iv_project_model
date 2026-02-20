enum MidtransTransactionStatusType { unknown, settlement, capture, pending, expire, cancel, deny }

extension MidtransTransactionStatusTypeExtension on MidtransTransactionStatusType {
  String toJson() {
    switch (this) {
      case .unknown:
        return 'unknown';
      case .pending:
        return 'pending';
      case .settlement:
        return 'settlement';
      case .capture:
        return 'capture';
      case .expire:
        return 'expire';
      case .cancel:
        return 'cancel';
      case .deny:
        return 'deny';
    }
  }

  static MidtransTransactionStatusType fromJson(String json) {
    switch (json) {
      case 'unknown':
        return .unknown;
      case 'pending':
        return .pending;
      case 'settlement':
        return .settlement;
      case 'capture':
        return .capture;
      case 'expire':
        return .expire;
      case 'cancel':
        return .cancel;
      case 'deny':
        return .deny;
      default:
        return .unknown;
    }
  }
}
