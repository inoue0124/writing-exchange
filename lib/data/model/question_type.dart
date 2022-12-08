enum QuestionType {
  /// 何て言う？
  howToSay,

  /// 違いは何？
  difference,

  /// unknown:想定のデータでない場合
  unknown,
}

extension QuestionTypeExtension on QuestionType {
  static QuestionType fromString(String status) {
    switch (status) {
      case 'howToSay':
        return QuestionType.howToSay;
      case 'difference':
        return QuestionType.difference;
      default:
        return QuestionType.unknown;
    }
  }

  static String statusToString(QuestionType status) {
    switch (status) {
      case QuestionType.howToSay:
        return 'howToSay';
      case QuestionType.difference:
        return 'difference';
      default:
        return '定義されていない値です';
    }
  }
}
