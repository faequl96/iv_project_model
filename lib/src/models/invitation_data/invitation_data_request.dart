import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/bank_account/bank_account_request.dart';
import 'package:iv_project_model/src/models/bridegroom/bridegroom_request.dart';
import 'package:iv_project_model/src/models/event/event_request.dart';
import 'package:iv_project_model/src/models/general/general_request.dart';

class CreateInvitationDataRequest extends Equatable {
  const CreateInvitationDataRequest({
    required this.general,
    required this.bride,
    required this.groom,
    required this.contractEvent,
    required this.receptionEvent,
    this.bankAccounts = const [],
  });

  final CreateGeneralRequest general;
  final CreateBridegroomRequest bride;
  final CreateBridegroomRequest groom;
  final CreateEventRequest contractEvent;
  final CreateEventRequest receptionEvent;
  final List<CreateBankAccountRequest> bankAccounts;

  Map<String, dynamic> toJson() {
    return {
      'general': general.toJson(),
      'bride': bride.toJson(),
      'groom': groom.toJson(),
      'contract_event': contractEvent.toJson(),
      'reception_event': receptionEvent.toJson(),
      'bank_accounts': bankAccounts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [general, bride, groom, contractEvent, receptionEvent, bankAccounts];
}

class UpdateInvitationDataRequest extends Equatable {
  const UpdateInvitationDataRequest({
    this.general,
    this.bride,
    this.groom,
    this.contractEvent,
    this.receptionEvent,
    this.bankAccounts = const [],
  });

  final UpdateGeneralRequest? general;
  final UpdateBridegroomRequest? bride;
  final UpdateBridegroomRequest? groom;
  final UpdateEventRequest? contractEvent;
  final UpdateEventRequest? receptionEvent;
  final List<UpdateBankAccountRequest> bankAccounts;

  Map<String, dynamic> toJson() {
    return {
      if (general != null) 'general': general!.toJson(),
      if (bride != null) 'bride': bride?.toJson(),
      if (groom != null) 'groom': groom?.toJson(),
      if (contractEvent != null) 'contract_event': contractEvent?.toJson(),
      if (receptionEvent != null) 'reception_event': receptionEvent?.toJson(),
      'bank_accounts': bankAccounts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [general, bride, groom, contractEvent, receptionEvent, bankAccounts];
}
