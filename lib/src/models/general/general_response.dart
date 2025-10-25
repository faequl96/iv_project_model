import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/lang_type.dart';

class GeneralResponse extends Equatable {
  const GeneralResponse({
    required this.id,
    required this.lang,
    this.coverImageUrl,
    required this.opening,
    required this.openingQuote,
    required this.quoteFrom,
    required this.regards,
    required this.greeting,
    required this.closing,
  });

  final int id;
  final LangType lang;
  final String? coverImageUrl;
  final String opening;
  final String openingQuote;
  final String quoteFrom;
  final String regards;
  final String greeting;
  final String closing;

  factory GeneralResponse.fromJson(Map<String, dynamic> json) {
    return GeneralResponse(
      id: json['id'],
      lang: LangTypeExtension.fromJson(json['lang']),
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
      'opening': opening,
      'opening_quote': openingQuote,
      'quote_from': quoteFrom,
      'regards': regards,
      'greeting': greeting,
      'closing': closing,
    };
  }

  @override
  List<Object?> get props => [id, lang, coverImageUrl, opening, openingQuote, quoteFrom, regards, greeting, closing];
}
