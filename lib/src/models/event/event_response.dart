import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class EventResponse extends Equatable {
  const EventResponse({
    required this.id,
    required this.startTime,
    this.endTime,
    required this.mapsUrl,
    this.latitude,
    this.longitude,
    required this.place,
    required this.address,
  });

  final int id;
  final DateTime startTime;
  final DateTime? endTime;
  final String mapsUrl;
  final double? latitude;
  final double? longitude;
  final String place;
  final String address;

  factory EventResponse.fromJson(Map<String, dynamic> json) {
    return EventResponse(
      id: json['id'],
      startTime: DateTimeConverter.fromJson(json['start_time']) ?? DateTime.now().toLocal(),
      endTime: json['start_time'] != null ? DateTimeConverter.fromJson(json['end_time']) ?? DateTime.now().toLocal() : null,
      mapsUrl: json['maps_url'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      place: json['place'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'start_time': DateTimeConverter.toJson(startTime),
      'end_time': DateTimeConverter.toJson(endTime),
      'maps_url': mapsUrl,
      'latitude': latitude,
      'longitude': longitude,
      'place': place,
      'address': address,
    };
  }

  @override
  List<Object?> get props => [id, startTime, endTime, mapsUrl, latitude, longitude, place, address];
}
