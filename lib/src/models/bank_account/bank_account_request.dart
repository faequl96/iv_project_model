import 'package:equatable/equatable.dart';

class const BankAccountRequest({
  required final String bankName,
  required final String accountName,
  required final String number,
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {'bank_name': bankName, 'account_name': accountName, 'number': number};
  }

  @override
  List<Object?> get props => [bankName, accountName, number];
}
