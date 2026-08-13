import 'package:equatable/equatable.dart';

class const AdMobRequest({required final int amount}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'amount': amount};
  }

  @override
  List<Object?> get props => [amount];
}
