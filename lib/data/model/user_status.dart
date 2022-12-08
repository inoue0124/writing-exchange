enum UserStatus {
  /// アクティブ
  active,

  /// 退会
  withdraw,

  /// unknown:想定のデータでない場合
  unknown,
}

extension UserStatusExtension on UserStatus {
  static UserStatus fromString(String status) {
    switch (status) {
      case 'active':
        return UserStatus.active;
      case 'withdraw':
        return UserStatus.withdraw;
      default:
        return UserStatus.unknown;
    }
  }

  static String statusToString(UserStatus status) {
    switch (status) {
      case UserStatus.active:
        return 'active';
      case UserStatus.withdraw:
        return 'withdraw';
      default:
        return '定義されていない値です';
    }
  }
}
