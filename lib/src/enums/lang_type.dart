enum LangType { id, en }

extension LangTypeExtension on LangType {
  String toJson() {
    switch (this) {
      case .id:
        return 'id';
      case .en:
        return 'en';
    }
  }

  String toCompleteName() {
    switch (this) {
      case .id:
        return 'Bahasa Indonesia';
      case .en:
        return 'English';
    }
  }

  static LangType fromJson(String json) {
    switch (json) {
      case 'id':
        return .id;
      case 'en':
        return .en;
      default:
        return .id;
    }
  }
}
