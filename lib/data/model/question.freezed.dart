// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
class _$QuestionTearOff {
  const _$QuestionTearOff();

  _Question call(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'type')
          required QuestionType type,
      @JsonKey(name: 'targetLanguage')
      @LanguageConverter()
          required Language targetLanguage,
      @JsonKey(name: 'answerLanguage')
      @LanguageConverter()
          required Language answerLanguage,
      @JsonKey(name: 'phraseA')
          required String phraseA,
      @JsonKey(name: 'phraseB')
          String? phraseB,
      @JsonKey(name: 'questionedAt')
      @DateTimeConverter()
          required DateTime questionedAt,
      @JsonKey(name: 'userId')
          String? userId,
      @JsonKey(ignore: true)
          User? user}) {
    return _Question(
      id: id,
      type: type,
      targetLanguage: targetLanguage,
      answerLanguage: answerLanguage,
      phraseA: phraseA,
      phraseB: phraseB,
      questionedAt: questionedAt,
      userId: userId,
      user: user,
    );
  }

  Question fromJson(Map<String, Object?> json) {
    return Question.fromJson(json);
  }
}

/// @nodoc
const $Question = _$QuestionTearOff();

/// @nodoc
mixin _$Question {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  QuestionType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetLanguage')
  @LanguageConverter()
  Language get targetLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'answerLanguage')
  @LanguageConverter()
  Language get answerLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'phraseA')
  String get phraseA => throw _privateConstructorUsedError;
  @JsonKey(name: 'phraseB')
  String? get phraseB =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'messages') required List<QuestionMessage> messages,
  @JsonKey(name: 'questionedAt')
  @DateTimeConverter()
  DateTime get questionedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'type')
          QuestionType type,
      @JsonKey(name: 'targetLanguage')
      @LanguageConverter()
          Language targetLanguage,
      @JsonKey(name: 'answerLanguage')
      @LanguageConverter()
          Language answerLanguage,
      @JsonKey(name: 'phraseA')
          String phraseA,
      @JsonKey(name: 'phraseB')
          String? phraseB,
      @JsonKey(name: 'questionedAt')
      @DateTimeConverter()
          DateTime questionedAt,
      @JsonKey(name: 'userId')
          String? userId,
      @JsonKey(ignore: true)
          User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? targetLanguage = freezed,
    Object? answerLanguage = freezed,
    Object? phraseA = freezed,
    Object? phraseB = freezed,
    Object? questionedAt = freezed,
    Object? userId = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      targetLanguage: targetLanguage == freezed
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      answerLanguage: answerLanguage == freezed
          ? _value.answerLanguage
          : answerLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      phraseA: phraseA == freezed
          ? _value.phraseA
          : phraseA // ignore: cast_nullable_to_non_nullable
              as String,
      phraseB: phraseB == freezed
          ? _value.phraseB
          : phraseB // ignore: cast_nullable_to_non_nullable
              as String?,
      questionedAt: questionedAt == freezed
          ? _value.questionedAt
          : questionedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'type')
          QuestionType type,
      @JsonKey(name: 'targetLanguage')
      @LanguageConverter()
          Language targetLanguage,
      @JsonKey(name: 'answerLanguage')
      @LanguageConverter()
          Language answerLanguage,
      @JsonKey(name: 'phraseA')
          String phraseA,
      @JsonKey(name: 'phraseB')
          String? phraseB,
      @JsonKey(name: 'questionedAt')
      @DateTimeConverter()
          DateTime questionedAt,
      @JsonKey(name: 'userId')
          String? userId,
      @JsonKey(ignore: true)
          User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? targetLanguage = freezed,
    Object? answerLanguage = freezed,
    Object? phraseA = freezed,
    Object? phraseB = freezed,
    Object? questionedAt = freezed,
    Object? userId = freezed,
    Object? user = freezed,
  }) {
    return _then(_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      targetLanguage: targetLanguage == freezed
          ? _value.targetLanguage
          : targetLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      answerLanguage: answerLanguage == freezed
          ? _value.answerLanguage
          : answerLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
      phraseA: phraseA == freezed
          ? _value.phraseA
          : phraseA // ignore: cast_nullable_to_non_nullable
              as String,
      phraseB: phraseB == freezed
          ? _value.phraseB
          : phraseB // ignore: cast_nullable_to_non_nullable
              as String?,
      questionedAt: questionedAt == freezed
          ? _value.questionedAt
          : questionedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question extends _Question {
  const _$_Question(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'type')
          required this.type,
      @JsonKey(name: 'targetLanguage')
      @LanguageConverter()
          required this.targetLanguage,
      @JsonKey(name: 'answerLanguage')
      @LanguageConverter()
          required this.answerLanguage,
      @JsonKey(name: 'phraseA')
          required this.phraseA,
      @JsonKey(name: 'phraseB')
          this.phraseB,
      @JsonKey(name: 'questionedAt')
      @DateTimeConverter()
          required this.questionedAt,
      @JsonKey(name: 'userId')
          this.userId,
      @JsonKey(ignore: true)
          this.user})
      : super._();

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'type')
  final QuestionType type;
  @override
  @JsonKey(name: 'targetLanguage')
  @LanguageConverter()
  final Language targetLanguage;
  @override
  @JsonKey(name: 'answerLanguage')
  @LanguageConverter()
  final Language answerLanguage;
  @override
  @JsonKey(name: 'phraseA')
  final String phraseA;
  @override
  @JsonKey(name: 'phraseB')
  final String? phraseB;
  @override // @JsonKey(name: 'messages') required List<QuestionMessage> messages,
  @JsonKey(name: 'questionedAt')
  @DateTimeConverter()
  final DateTime questionedAt;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(ignore: true)
  final User? user;

  @override
  String toString() {
    return 'Question(id: $id, type: $type, targetLanguage: $targetLanguage, answerLanguage: $answerLanguage, phraseA: $phraseA, phraseB: $phraseB, questionedAt: $questionedAt, userId: $userId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.targetLanguage, targetLanguage) &&
            const DeepCollectionEquality()
                .equals(other.answerLanguage, answerLanguage) &&
            const DeepCollectionEquality().equals(other.phraseA, phraseA) &&
            const DeepCollectionEquality().equals(other.phraseB, phraseB) &&
            const DeepCollectionEquality()
                .equals(other.questionedAt, questionedAt) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(targetLanguage),
      const DeepCollectionEquality().hash(answerLanguage),
      const DeepCollectionEquality().hash(phraseA),
      const DeepCollectionEquality().hash(phraseB),
      const DeepCollectionEquality().hash(questionedAt),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question extends Question {
  const factory _Question(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'type')
          required QuestionType type,
      @JsonKey(name: 'targetLanguage')
      @LanguageConverter()
          required Language targetLanguage,
      @JsonKey(name: 'answerLanguage')
      @LanguageConverter()
          required Language answerLanguage,
      @JsonKey(name: 'phraseA')
          required String phraseA,
      @JsonKey(name: 'phraseB')
          String? phraseB,
      @JsonKey(name: 'questionedAt')
      @DateTimeConverter()
          required DateTime questionedAt,
      @JsonKey(name: 'userId')
          String? userId,
      @JsonKey(ignore: true)
          User? user}) = _$_Question;
  const _Question._() : super._();

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'type')
  QuestionType get type;
  @override
  @JsonKey(name: 'targetLanguage')
  @LanguageConverter()
  Language get targetLanguage;
  @override
  @JsonKey(name: 'answerLanguage')
  @LanguageConverter()
  Language get answerLanguage;
  @override
  @JsonKey(name: 'phraseA')
  String get phraseA;
  @override
  @JsonKey(name: 'phraseB')
  String? get phraseB;
  @override // @JsonKey(name: 'messages') required List<QuestionMessage> messages,
  @JsonKey(name: 'questionedAt')
  @DateTimeConverter()
  DateTime get questionedAt;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
