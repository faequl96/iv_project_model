import 'package:equatable/equatable.dart';

class const IVCoinRequest({required final int balance}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'balance': balance};
  }

  @override
  List<Object?> get props => [balance];
}
