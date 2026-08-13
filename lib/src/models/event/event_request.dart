import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class const EventRequest({
  required final DateTime startTime,
  final DateTime? endTime,
  required final String mapsUrl,
  final String? latitude,
  final String? longitude,
  required final String place,
  required final String address,
}) extends Equatable {
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
