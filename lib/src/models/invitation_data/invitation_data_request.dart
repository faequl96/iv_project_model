import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/bank_account/bank_account_request.dart';
import 'package:iv_project_model/src/models/bridegroom/bridegroom_request.dart';
import 'package:iv_project_model/src/models/event/event_request.dart';

class CreateInvitationDataRequest extends Equatable {
  const CreateInvitationDataRequest({
    this.coverImageUrl,
    required this.bride,
    required this.groom,
    required this.contractEvent,
    required this.receptionEvent,
    this.bankAccounts = const [],
  });

  final String? coverImageUrl;
  final CreateBridegroomRequest bride;
  final CreateBridegroomRequest groom;
  final CreateEventRequest contractEvent;
  final CreateEventRequest receptionEvent;
  final List<CreateBankAccountRequest> bankAccounts;

  Map<String, dynamic> toJson() {
    return {
      'cover_image_url': coverImageUrl,
      'bride': bride.toJson(),
      'groom': groom.toJson(),
      'contract_event': contractEvent.toJson(),
      'reception_event': receptionEvent.toJson(),
      'bank_accounts': bankAccounts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [coverImageUrl, bride, groom, contractEvent, receptionEvent, bankAccounts];
}

class UpdateInvitationDataRequest extends Equatable {
  const UpdateInvitationDataRequest({
    this.coverImageUrl,
    required this.bride,
    required this.groom,
    required this.contractEvent,
    required this.receptionEvent,
    this.bankAccounts = const [],
  });

  final String? coverImageUrl;
  final CreateBridegroomRequest? bride;
  final CreateBridegroomRequest? groom;
  final CreateEventRequest? contractEvent;
  final CreateEventRequest? receptionEvent;
  final List<CreateBankAccountRequest> bankAccounts;

  Map<String, dynamic> toJson() {
    return {
      'cover_image_url': coverImageUrl,
      'bride': bride?.toJson(),
      'groom': groom?.toJson(),
      'contract_event': contractEvent?.toJson(),
      'reception_event': receptionEvent?.toJson(),
      'bank_accounts': bankAccounts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [coverImageUrl, bride, groom, contractEvent, receptionEvent, bankAccounts];
}
