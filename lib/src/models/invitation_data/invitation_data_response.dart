import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class const InvitationDataResponse({
  required final int id,
  required final GeneralResponse general,
  required final BridegroomResponse bride,
  required final BridegroomResponse groom,
  required final EventResponse contractEvent,
  required final EventResponse receptionEvent,
  required final GalleryResponse gallery,
  final List<BankAccountResponse> bankAccounts = const [],
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      general: .fromJson(json['general']),
      bride: .fromJson(json['bride']),
      groom: .fromJson(json['groom']),
      contractEvent: .fromJson(json['contract_event']),
      receptionEvent: .fromJson(json['reception_event']),
      gallery: .fromJson(json['gallery']),
      bankAccounts: (json['bank_accounts'] as List)
          .map((json) => BankAccountResponse.fromJson(json))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
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
    id,
    general,
    bride,
    groom,
    contractEvent,
    receptionEvent,
    gallery,
    bankAccounts,
  ];
}
