import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const TransactionConfirmationRequest({required final TransactionStatusType status})
    extends Equatable {
  Map<String, dynamic> toJson() {
    return {'status': status.toJson()};
  }

  @override
  List<Object?> get props => [status];
}
