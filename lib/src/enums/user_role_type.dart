enum UserRoleType { superAdmin, admin, user }

extension UserRoleTypeExtension on UserRoleType {
  String toJson() {
    switch (this) {
      case .superAdmin:
        return 'super_admin';
      case .admin:
        return 'admin';
      case .user:
        return 'user';
    }
  }

  static UserRoleType fromJson(String json) {
    switch (json) {
      case 'super_admin':
        return .superAdmin;
      case 'admin':
        return .admin;
      case 'user':
        return .user;
      default:
        return .user;
    }
  }
}
