enum Review {
  /// グッド
  good,

  /// バッド
  bad,

  /// unknown:想定のデータでない場合
  unknown,
}

extension ReviewExtension on Review {
  static Review fromString(String status) {
    switch (status) {
      case 'good':
        return Review.good;
      case 'bad':
        return Review.bad;
      default:
        return Review.unknown;
    }
  }

  static String statusToString(Review status) {
    switch (status) {
      case Review.good:
        return 'good';
      case Review.bad:
        return 'bad';
      default:
        return '定義されていない値です';
    }
  }
}
