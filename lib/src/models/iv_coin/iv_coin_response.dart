import 'package:equatable/equatable.dart';

class IVCoinResponse extends Equatable {
  const IVCoinResponse({required this.id, required this.balance});

  final int id;
  final int balance;

  factory IVCoinResponse.fromJson(Map<String, dynamic> json) {
    return IVCoinResponse(id: json['id'] as int, balance: json['balance'] as int);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'balance': balance};
  }

  @override
  List<Object?> get props => [id, balance];
}
