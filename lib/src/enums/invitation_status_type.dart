enum InvitationStatusType { draft, active }

extension InvitationStatusTypeExtension on InvitationStatusType {
  String toJson() {
    switch (this) {
      case InvitationStatusType.draft:
        return 'draft';
      case InvitationStatusType.active:
        return 'active';
    }
  }

  static InvitationStatusType fromJson(String json) {
    switch (json) {
      case 'draft':
        return InvitationStatusType.draft;
      case 'active':
        return InvitationStatusType.active;
      default:
        return InvitationStatusType.draft;
    }
  }
}
