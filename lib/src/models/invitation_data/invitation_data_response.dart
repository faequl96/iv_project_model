import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/models/bridegroom/bridegroom_response.dart';
import 'package:iv_project_model/src/models/event/event_response.dart';
import 'package:iv_project_model/src/models/gallery/gallery_response.dart';

class InvitationDataResponse extends Equatable {
  const InvitationDataResponse({
    required this.id,
    required this.coverImageUrl,
    required this.bride,
    required this.groom,
    required this.contractEvent,
    required this.receptionEvent,
    this.gallery,
  });

  final int id;
  final String coverImageUrl;
  final BridegroomResponse bride;
  final BridegroomResponse groom;
  final EventResponse contractEvent;
  final EventResponse receptionEvent;
  final GalleryResponse? gallery;

  factory InvitationDataResponse.fromJson(Map<String, dynamic> json) {
    return InvitationDataResponse(
      id: json['id'],
      coverImageUrl: json['cover_image_url'],
      bride: BridegroomResponse.fromJson(json['bride']),
      groom: BridegroomResponse.fromJson(json['groom']),
      contractEvent: EventResponse.fromJson(json['contract_event']),
      receptionEvent: EventResponse.fromJson(json['reception_event']),
      gallery: json['gallery'] != null ? GalleryResponse.fromJson(json['gallery']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cover_image_url': coverImageUrl,
      'bride': bride.toJson(),
      'groom': groom.toJson(),
      'contract_event': contractEvent.toJson(),
      'reception_event': receptionEvent.toJson(),
      'gallery': gallery?.toJson(),
    };
  }

  @override
  List<Object?> get props => [id, coverImageUrl, bride, groom, contractEvent, receptionEvent, gallery];
}
