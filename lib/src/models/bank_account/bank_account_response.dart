import 'package:equatable/equatable.dart';

class BankAccountResponse extends Equatable {
  const BankAccountResponse({required this.id, required this.bankName, required this.accountName, required this.number});

  final int id;
  final String bankName;
  final String accountName;
  final String number;

  factory BankAccountResponse.fromJson(Map<String, dynamic> json) {
    return BankAccountResponse(
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
