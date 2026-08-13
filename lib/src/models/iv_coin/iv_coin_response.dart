import 'package:equatable/equatable.dart';

class const IVCoinResponse({
  required final int id,
  required final int balance,
  required final int adMobMarker,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'] as int,
      balance: json['balance'] as int,
      adMobMarker: json['ad_mob_marker'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'balance': balance, 'ad_mob_marker': adMobMarker};
  }

  @override
  List<Object?> get props => [id, balance, adMobMarker];
}
