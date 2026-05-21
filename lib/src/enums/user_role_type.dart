enum UserRoleType { superAdmin, admin, user }

extension UserRoleTypeExtension on UserRoleType {
  String toJson() => switch (this) {
    .superAdmin => 'super_admin',
    .admin => 'admin',
    .user => 'user',
  };

  static UserRoleType fromJson(String json) => switch (json) {
    'super_admin' => .superAdmin,
    'admin' => .admin,
    'user' => .user,
    String() => .user,
  };
}
