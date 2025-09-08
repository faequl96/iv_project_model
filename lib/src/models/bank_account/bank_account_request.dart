import 'package:equatable/equatable.dart';

class CreateBankAccountRequest extends Equatable {
  const CreateBankAccountRequest({required this.bankName, required this.accountName, required this.number});

  final String bankName;
  final String accountName;
  final String number;

  Map<String, dynamic> toJson() {
    return {'bank_name': bankName, 'account_name': accountName, 'number': number};
  }

  @override
  List<Object?> get props => [bankName, accountName, number];
}

class UpdateBankAccountRequest extends Equatable {
  const UpdateBankAccountRequest({this.bankName, this.accountName, this.number});

  final String? bankName;
  final String? accountName;
  final String? number;

  Map<String, dynamic> toJson() {
    return {
      if (bankName != null) 'bank_name': bankName,
      if (accountName != null) 'account_name': accountName,
      if (number != null) 'number': number,
    };
  }

  @override
  List<Object?> get props => [bankName, accountName, number];
}
