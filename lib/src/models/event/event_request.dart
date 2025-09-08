import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class CreateEventRequest extends Equatable {
  const CreateEventRequest({
    required this.startTime,
    this.finishTime,
    required this.place,
    required this.address,
    required this.mapsUrl,
  });

  final DateTime startTime;
  final DateTime? finishTime;
  final String place;
  final String address;
  final String mapsUrl;

  Map<String, dynamic> toJson() {
    return {
      'start_time': DateTimeConverter.toJson(startTime),
      'finish_time': DateTimeConverter.toJson(finishTime),
      'place': place,
      'address': address,
      'maps_url': mapsUrl,
    };
  }

  @override
  List<Object?> get props => [startTime, finishTime, place, address, mapsUrl];
}

class UpdateEventRequest extends Equatable {
  const UpdateEventRequest({this.startTime, this.finishTime, required this.place, required this.address, required this.mapsUrl});

  final DateTime? startTime;
  final DateTime? finishTime;
  final String? place;
  final String? address;
  final String? mapsUrl;

  Map<String, dynamic> toJson() {
    return {
      if (startTime != null) 'start_time': DateTimeConverter.toJson(startTime),
      if (finishTime != null) 'finish_time': DateTimeConverter.toJson(finishTime),
      if (place != null) 'place': place,
      if (address != null) 'address': address,
      if (mapsUrl != null) 'maps_url': mapsUrl,
    };
  }

  @override
  List<Object?> get props => [startTime, finishTime, place, address, mapsUrl];
}
