import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class EventResponse extends Equatable {
  const EventResponse({required this.id, required this.time, required this.place, required this.address, required this.mapsUrl});

  final int id;
  final DateTime time;
  final String place;
  final String address;
  final String mapsUrl;

  factory EventResponse.fromJson(Map<String, dynamic> json) {
    return EventResponse(
      id: json['id'],
      time: DateTimeConverter.fromJson(json['time']) ?? DateTime.now().toLocal(),
      place: json['place'],
      address: json['address'],
      mapsUrl: json['maps_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'time': DateTimeConverter.toJson(time), 'place': place, 'address': address, 'maps_url': mapsUrl};
  }

  @override
  List<Object?> get props => [id, time, place, address, mapsUrl];
}
