enum InvitationStatusType() {
  draft,
  active
}

extension InvitationStatusTypeExtension on InvitationStatusType {
  String toJson() => switch (this) {
    .draft => 'draft',
    .active => 'active',
  };

  static InvitationStatusType fromJson(String json) => switch (json) {
    'draft' => .draft,
    'active' => .active,
    String() => .draft,
  };
}
