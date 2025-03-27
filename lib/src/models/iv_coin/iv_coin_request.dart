import 'package:equatable/equatable.dart';

class IVCoinRequest extends Equatable {
  const IVCoinRequest({required this.balance});

  final int balance;

  Map<String, dynamic> toJson() {
    return {'balance': balance};
  }

  @override
  List<Object?> get props => [balance];
}
