import 'package:equatable/equatable.dart';
import 'package:iv_project_model/src/enums/lang_type.dart';

class CreateGeneralRequest extends Equatable {
  const CreateGeneralRequest({
    required this.lang,
    required this.opening,
    required this.openingQuote,
    required this.quoteFrom,
    required this.regards,
    required this.greeting,
    required this.closing,
  });

  final LangType lang;
  final String opening;
  final String openingQuote;
  final String quoteFrom;
  final String regards;
  final String greeting;
  final String closing;

  Map<String, dynamic> toJson() {
    return {
      'lang': lang.toJson(),
      'opening': opening,
      'opening_quote': openingQuote,
      'quote_from': quoteFrom,
      'regards': regards,
      'greeting': greeting,
      'closing': closing,
    };
  }

  @override
  List<Object?> get props => [lang, opening, openingQuote, quoteFrom, regards, greeting, closing];
}

class UpdateGeneralRequest extends Equatable {
  const UpdateGeneralRequest({
    this.lang,
    this.opening,
    this.openingQuote,
    this.quoteFrom,
    this.regards,
    this.greeting,
    this.closing,
  });

  final LangType? lang;
  final String? opening;
  final String? openingQuote;
  final String? quoteFrom;
  final String? regards;
  final String? greeting;
  final String? closing;

  Map<String, dynamic> toJson() {
    return {
      if (lang != null) 'lang': lang!.toJson(),
      if (opening != null) 'opening': opening,
      if (openingQuote != null) 'opening_quote': openingQuote,
      if (quoteFrom != null) 'quote_from': quoteFrom,
      if (regards != null) 'regards': regards,
      if (greeting != null) 'greeting': greeting,
      if (closing != null) 'closing': closing,
    };
  }

  @override
  List<Object?> get props => [lang, opening, openingQuote, quoteFrom, regards, greeting, closing];
}
