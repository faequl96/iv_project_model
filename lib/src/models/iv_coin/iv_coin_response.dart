import 'package:equatable/equatable.dart';

class IVCoinResponse extends Equatable {
  const IVCoinResponse({required this.id, required this.balance, required this.adMobMarker});

  final int id;
  final int balance;
  final int adMobMarker;

  factory IVCoinResponse.fromJson(Map<String, dynamic> json) {
    return IVCoinResponse(id: json['id'] as int, balance: json['balance'] as int, adMobMarker: json['ad_mob_marker'] as int);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'balance': balance, 'ad_mob_marker': adMobMarker};
  }

  @override
  List<Object?> get props => [id, balance, adMobMarker];
}
