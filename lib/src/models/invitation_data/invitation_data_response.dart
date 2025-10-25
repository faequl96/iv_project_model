import 'package:equatable/equatable.dart';
import 'package:iv_project_model/iv_project_model.dart';

class InvitationDataResponse extends Equatable {
  const InvitationDataResponse({
    required this.id,
    required this.general,
    required this.bride,
    required this.groom,
    required this.contractEvent,
    required this.receptionEvent,
    this.gallery,
    this.bankAccounts = const [],
  });

  final int id;
  final GeneralResponse general;
  final BridegroomResponse bride;
  final BridegroomResponse groom;
  final EventResponse contractEvent;
  final EventResponse receptionEvent;
  final GalleryResponse? gallery;
  final List<BankAccountResponse> bankAccounts;

  factory InvitationDataResponse.fromJson(Map<String, dynamic> json) {
    return InvitationDataResponse(
      id: json['id'],
      general: GeneralResponse.fromJson(json['general']),
      bride: BridegroomResponse.fromJson(json['bride']),
      groom: BridegroomResponse.fromJson(json['groom']),
      contractEvent: EventResponse.fromJson(json['contract_event']),
      receptionEvent: EventResponse.fromJson(json['reception_event']),
      gallery: json['gallery'] != null ? GalleryResponse.fromJson(json['gallery']) : null,
      bankAccounts: (json['bank_accounts'] as List).map((json) => BankAccountResponse.fromJson(json)).toList(),
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
      'gallery': gallery?.toJson(),
      'bank_accounts': bankAccounts.map((e) => e.toJson()).toList(),
    };
  }

  @override
  List<Object?> get props => [id, general, bride, groom, contractEvent, receptionEvent, gallery, bankAccounts];
}
