import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/lang_type.dart';

class GeneralRequest extends Equatable {
  const GeneralRequest({
    required this.lang,
    this.removeMusicAudioUrl = false,
    this.removeCoverImageurl = false,
    required this.opening,
    required this.openingQuote,
    required this.quoteFrom,
    required this.regards,
    required this.greeting,
    required this.closing,
  });

  final LangType lang;
  final bool removeMusicAudioUrl;
  final bool removeCoverImageurl;
  final String opening;
  final String openingQuote;
  final String quoteFrom;
  final String regards;
  final String greeting;
  final String closing;

  Map<String, dynamic> toJson() {
    return {
      'lang': lang.toJson(),
      'remove_music_audio_url': removeMusicAudioUrl,
      'remove_cover_image_url': removeCoverImageurl,
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
    lang,
    removeMusicAudioUrl,
    removeCoverImageurl,
    opening,
    openingQuote,
    quoteFrom,
    regards,
    greeting,
    closing,
  ];
}
