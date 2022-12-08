enum PostStatus {
  /// 下書き
  draft,

  /// 公開済み
  active,

  /// unknown:想定のデータでない場合
  unknown,
}

extension PostStatusExtension on PostStatus {
  static PostStatus fromString(String status) {
    switch (status) {
      case 'draft':
        return PostStatus.draft;
      case 'active':
        return PostStatus.active;
      default:
        return PostStatus.unknown;
    }
  }

  static String statusToString(PostStatus status) {
    switch (status) {
      case PostStatus.draft:
        return 'draft';
      case PostStatus.active:
        return 'active';
      default:
        return '定義されていない値です';
    }
  }
}
