import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class CreateEventRequest extends Equatable {
  const CreateEventRequest({required this.time, required this.place, required this.address, required this.mapsUrl});

  final DateTime time;
  final String place;
  final String address;
  final String mapsUrl;

  Map<String, dynamic> toJson() {
    return {'time': DateTimeConverter.toJson(time), 'place': place, 'address': address, 'maps_url': mapsUrl};
  }

  @override
  List<Object> get props => [time, place, address, mapsUrl];
}

class UpdateEventRequest extends Equatable {
  const UpdateEventRequest({required this.time, required this.place, required this.address, required this.mapsUrl});

  final DateTime? time;
  final String? place;
  final String? address;
  final String? mapsUrl;

  Map<String, dynamic> toJson() {
    return {
      if (time != null) 'time': DateTimeConverter.toJson(time),
      if (place != null) 'place': place,
      if (address != null) 'address': address,
      if (mapsUrl != null) 'maps_url': mapsUrl,
    };
  }

  @override
  List<Object?> get props => [time, place, address, mapsUrl];
}
