enum ProductType() {
  invitation,
  ivCoinPackage
}

extension ProductTypeExtension on ProductType {
  String toJson() => switch (this) {
    .invitation => 'invitation',
    .ivCoinPackage => 'iv_coin_package',
  };

  static ProductType fromJson(String json) => switch (json) {
    'invitation' => .invitation,
    'iv_coin_package' => .ivCoinPackage,
    String() => .invitation,
  };
}
