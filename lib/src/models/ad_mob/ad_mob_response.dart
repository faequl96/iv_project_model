import 'package:equatable/equatable.dart';

class AdMobResponse extends Equatable {
  const AdMobResponse({required this.id, required this.balance});

  final int id;
  final int balance;

  factory AdMobResponse.fromJson(Map<String, dynamic> json) {
    return AdMobResponse(id: json['id'] as int, balance: json['balance'] as int);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'balance': balance};
  }

  @override
  List<Object?> get props => [id, balance];
}
