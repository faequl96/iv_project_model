import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';
import 'package:iv_project_model/src/models/gallery/gallery_response.dart';

class InvitationDataResponse extends Equatable {
  const InvitationDataResponse({
    required this.id,
    required this.eventName,
    required this.eventDate,
    required this.location,
    required this.mainImageUrl,
    this.gallery,
  });

  final int id;
  final String eventName;
  final DateTime eventDate;
  final String location;
  final String mainImageUrl;
  final GalleryResponse? gallery;

  factory InvitationDataResponse.fromJson(Map<String, dynamic> json) {
    return InvitationDataResponse(
      id: json['id'],
      eventName: json['event_name'],
      eventDate: DateTimeConverter.fromJson(json['event_date']),
      location: json['location'],
      mainImageUrl: json['main_image_url'],
      gallery: json['gallery'] != null ? GalleryResponse.fromJson(json['gallery']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'event_name': eventName,
      'event_date': DateTimeConverter.toJson(eventDate),
      'location': location,
      'main_image_url': mainImageUrl,
      'gallery': gallery?.toJson(),
    };
  }

  @override
  List<Object?> get props => [id, eventName, eventDate, location, mainImageUrl, gallery];
}
