enum InvitationStatusType { draft, active }

extension InvitationStatusTypeExtension on InvitationStatusType {
  String toJson() {
    switch (this) {
      case .draft:
        return 'draft';
      case .active:
        return 'active';
    }
  }

  static InvitationStatusType fromJson(String json) {
    switch (json) {
      case 'draft':
        return .draft;
      case 'active':
        return .active;
      default:
        return .draft;
    }
  }
}
