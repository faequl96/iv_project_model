import 'package:equatable/equatable.dart';

class TransactionConfirmationRequest extends Equatable {
  const TransactionConfirmationRequest({required this.status});

  final String status;

  Map<String, dynamic> toJson() {
    return {'status': status};
  }

  @override
  List<Object?> get props => [status];
}
