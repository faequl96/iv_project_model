import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/lang_type.dart';

class const GeneralRequest({
  required final LangType lang,
  final bool removeMusicAudioUrl = false,
  final bool removeCoverImageurl = false,
  required final String opening,
  required final String openingQuote,
  required final String quoteFrom,
  required final String regards,
  required final String greeting,
  required final String closing,
}) extends Equatable {
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
