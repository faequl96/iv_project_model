enum UserRoleType { superAdmin, admin, user }

extension UserRoleTypeExtension on UserRoleType {
  String toJson() {
    switch (this) {
      case UserRoleType.superAdmin:
        return 'super_admin';
      case UserRoleType.admin:
        return 'admin';
      case UserRoleType.user:
        return 'user';
    }
  }

  static UserRoleType fromJson(String json) {
    switch (json) {
      case 'super_admin':
        return UserRoleType.superAdmin;
      case 'admin':
        return UserRoleType.admin;
      case 'user':
        return UserRoleType.user;
      default:
        return UserRoleType.user;
    }
  }
}
