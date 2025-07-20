import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class TransactionConfirmationRequest extends Equatable {
  const TransactionConfirmationRequest({required this.status});

  final TransactionStatusType status;

  Map<String, dynamic> toJson() {
    return {'status': status.toJson()};
  }

  @override
  List<Object?> get props => [status];
}
