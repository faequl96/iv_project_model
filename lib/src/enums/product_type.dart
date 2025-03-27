enum ProductType { invitation, ivCoinPackage }

extension ProductTypeExtension on ProductType {
  String toJson() {
    switch (this) {
      case ProductType.invitation:
        return 'invitation';
      case ProductType.ivCoinPackage:
        return 'iv_coin_package';
    }
  }

  static ProductType fromJson(String json) {
    switch (json) {
      case 'invitation':
        return ProductType.invitation;
      case 'iv_coin_package':
        return ProductType.ivCoinPackage;
      default:
        throw ArgumentError('Invalid ProductType: $json');
    }
  }
}
