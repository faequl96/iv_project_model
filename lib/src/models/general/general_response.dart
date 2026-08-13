import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/lang_type.dart';

class const GeneralResponse({
  required final int id,
  required final LangType lang,
  final String? musicAudioUrl,
  final String? coverImageUrl,
  required final String opening,
  required final String openingQuote,
  required final String quoteFrom,
  required final String regards,
  required final String greeting,
  required final String closing,
}) extends Equatable {
  factory fromJson(Map<String, dynamic> json) {
    return .new(
      id: json['id'],
      lang: LangTypeExtension.fromJson(json['lang']),
      musicAudioUrl: json['music_audio_url'],
      coverImageUrl: json['cover_image_url'],
      opening: json['opening'],
      openingQuote: json['opening_quote'],
      quoteFrom: json['quote_from'],
      regards: json['regards'],
      greeting: json['greeting'],
      closing: json['closing'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lang': lang.toJson(),
      'cover_image_url': coverImageUrl,
      'music_audio_url': musicAudioUrl,
      'opening': opening,
      'opening_quote': openingQuote,
      'quote_from': quoteFrom,
      'regards': regards,
      'greeting': greeting,
      'closing': closing,
    };
  }

  @override
  List<Object?> get props => [
    id,
    lang,
    musicAudioUrl,
    coverImageUrl,
    opening,
    openingQuote,
    quoteFrom,
    regards,
    greeting,
    closing,
  ];
}
