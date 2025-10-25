enum LangType { id, en }

extension LangTypeExtension on LangType {
  String toJson() {
    switch (this) {
      case LangType.id:
        return 'id';
      case LangType.en:
        return 'en';
    }
  }

  String toCompleteName() {
    switch (this) {
      case LangType.id:
        return 'Bahasa Indonesia';
      case LangType.en:
        return 'English';
    }
  }

  static LangType fromJson(String json) {
    switch (json) {
      case 'id':
        return LangType.id;
      case 'en':
        return LangType.en;
      default:
        return LangType.id;
    }
  }
}
