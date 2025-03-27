import 'package:equatable/equatable.dart';

class AdMobRequest extends Equatable {
  const AdMobRequest({required this.amount});

  final int amount;

  Map<String, dynamic> toJson() {
    return {'amount': amount};
  }

  @override
  List<Object?> get props => [amount];
}
