import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class CreateEventRequest extends Equatable {
  const CreateEventRequest({
    required this.startTime,
    this.endTime,
    required this.mapsUrl,
    this.latitude,
    this.longitude,
    required this.place,
    required this.address,
  });

  final DateTime startTime;
  final DateTime? endTime;
  final String mapsUrl;
  final String? latitude;
  final String? longitude;
  final String place;
  final String address;

  Map<String, dynamic> toJson() {
    return {
      'start_time': DateTimeConverter.toJson(startTime),
      if (endTime != null) 'end_time': DateTimeConverter.toJson(endTime),
      'maps_url': mapsUrl,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      'place': place,
      'address': address,
    };
  }

  @override
  List<Object?> get props => [startTime, endTime, mapsUrl, latitude, longitude, place, address];
}

class UpdateEventRequest extends Equatable {
  const UpdateEventRequest({this.startTime, this.endTime, this.mapsUrl, this.latitude, this.longitude, this.place, this.address});

  final DateTime? startTime;
  final DateTime? endTime;
  final String? mapsUrl;
  final String? latitude;
  final String? longitude;
  final String? place;
  final String? address;

  Map<String, dynamic> toJson() {
    return {
      if (startTime != null) 'start_time': DateTimeConverter.toJson(startTime),
      if (endTime != null) 'end_time': DateTimeConverter.toJson(endTime),
      if (mapsUrl != null) 'maps_url': mapsUrl,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (place != null) 'place': place,
      if (address != null) 'address': address,
    };
  }

  @override
  List<Object?> get props => [startTime, endTime, mapsUrl, latitude, longitude, place, address];
}
