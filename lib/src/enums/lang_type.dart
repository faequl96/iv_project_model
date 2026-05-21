enum LangType { id, en }

extension LangTypeExtension on LangType {
  String toJson() => switch (this) {
    .id => 'id',
    .en => 'en',
  };

  String toCompleteName() => switch (this) {
    .id => 'Bahasa Indonesia',
    .en => 'English',
  };

  static LangType fromJson(String json) => switch (json) {
    'id' => .id,
    'en' => .en,
    String() => .id,
  };
}
