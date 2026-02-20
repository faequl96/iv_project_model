enum ProductType { invitation, ivCoinPackage }

extension ProductTypeExtension on ProductType {
  String toJson() {
    switch (this) {
      case .invitation:
        return 'invitation';
      case .ivCoinPackage:
        return 'iv_coin_package';
    }
  }

  static ProductType fromJson(String json) {
    switch (json) {
      case 'invitation':
        return .invitation;
      case 'iv_coin_package':
        return .ivCoinPackage;
      default:
        throw ArgumentError('Invalid ProductType: $json');
    }
  }
}
