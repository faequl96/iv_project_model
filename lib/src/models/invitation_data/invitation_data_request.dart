import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/converters/date_time_converter.dart';

class CreateInvitationDataRequest extends Equatable {
  const CreateInvitationDataRequest({required this.eventName, required this.eventDate, required this.location});

  final String eventName;
  final DateTime eventDate;
  final String location;

  Map<String, dynamic> toJson() {
    return {'event_name': eventName, 'event_date': DateTimeConverter.toJson(eventDate), 'location': location};
  }

  @override
  List<Object> get props => [eventName, eventDate, location];
}

class UpdateInvitationDataRequest extends Equatable {
  const UpdateInvitationDataRequest({this.eventName, this.eventDate, this.location});

  final String? eventName;
  final DateTime? eventDate;
  final String? location;

  Map<String, dynamic> toJson() {
    return {
      if (eventName != null) 'event_name': eventName,
      if (eventDate != null) 'event_date': DateTimeConverter.toJson(eventDate!),
      if (location != null) 'location': location,
    };
  }

  @override
  List<Object?> get props => [eventName, eventDate, location];
}
