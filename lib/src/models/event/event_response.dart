import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class const EventResponse({
  required final int id,
  required final DateTime startTime,
  final DateTime? endTime,
  required final String mapsUrl,
  final String? latitude,
  final String? longitude,
  required final String place,
  required final String address,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      startTime: DateTimeConverter.fromJson(json['start_time']) ?? .now().toLocal(),
      endTime: json['end_time'] != null
          ? DateTimeConverter.fromJson(json['end_time']) ?? .now().toLocal()
          : null,
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
