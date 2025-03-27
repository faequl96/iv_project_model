class DateTimeConverter {
  DateTimeConverter._();

  static DateTime fromJson(String json) => DateTime.parse(json).toLocal();
  static String toJson(DateTime date) => date.toUtc().toIso8601String();
}
