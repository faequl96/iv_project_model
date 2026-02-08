import 'package:equatable/equatable.dart';

class BankAccountRequest extends Equatable {
  const BankAccountRequest({required this.bankName, required this.accountName, required this.number});

  final String bankName;
  final String accountName;
  final String number;

  Map<String, dynamic> toJson() {
    return {'bank_name': bankName, 'account_name': accountName, 'number': number};
  }

  @override
  List<Object?> get props => [bankName, accountName, number];
}
