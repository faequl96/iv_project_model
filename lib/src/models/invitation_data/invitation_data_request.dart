import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/bank_account/bank_account_request.dart';
import 'package:iv_project_model/src/models/bridegroom/bridegroom_request.dart';
import 'package:iv_project_model/src/models/event/event_request.dart';
import 'package:iv_project_model/src/models/gallery/gallery_request.dart';
import 'package:iv_project_model/src/models/general/general_request.dart';

class InvitationDataRequest extends Equatable {
  const InvitationDataRequest({
    required this.general,
    required this.bride,
    required this.groom,
    required this.contractEvent,
    required this.receptionEvent,
    required this.gallery,
    this.bankAccounts = const [],
  });

  final GeneralRequest general;
  final BridegroomRequest bride;
  final BridegroomRequest groom;
  final EventRequest contractEvent;
  final EventRequest receptionEvent;
  final GalleryRequest gallery;
  final List<BankAccountRequest> bankAccounts;

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
  List<Object?> get props => [general, bride, groom, contractEvent, receptionEvent, gallery, bankAccounts];
}
