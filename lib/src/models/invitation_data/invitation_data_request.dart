import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/bank_account/bank_account_request.dart';
import 'package:iv_project_model/src/models/bridegroom/bridegroom_request.dart';
import 'package:iv_project_model/src/models/event/event_request.dart';
import 'package:iv_project_model/src/models/gallery/gallery_request.dart';
import 'package:iv_project_model/src/models/general/general_request.dart';

class const InvitationDataRequest({
  required final GeneralRequest general,
  required final BridegroomRequest bride,
  required final BridegroomRequest groom,
  required final EventRequest contractEvent,
  required final EventRequest receptionEvent,
  required final GalleryRequest gallery,
  final List<BankAccountRequest> bankAccounts = const [],
}) extends Equatable {
  Map<String, dynamic> toJson() {
    return {
      'general': general.toJson(),
      'bride': bride.toJson(),
      'groom': groom.toJson(),
      'contract_event': contractEvent.toJson(),
      'reception_event': receptionEvent.toJson(),
      'gallery': gallery.toJson(),
      'bank_accounts': bankAccounts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [
    general,
    bride,
    groom,
    contractEvent,
    receptionEvent,
    gallery,
    bankAccounts,
  ];
}
