import 'package:equatable/equatable.dart';

class const BankAccountResponse({
  required final int id,
  required final String bankName,
  required final String accountName,
  required final String number,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      bankName: json['bank_name'],
      accountName: json['account_name'],
      number: json['number'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'bank_name': bankName, 'account_name': accountName, 'number': number};
  }

  @override
  List<Object?> get props => [id, bankName, accountName, number];
}
