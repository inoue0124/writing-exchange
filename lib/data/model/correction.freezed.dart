// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'correction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Correction _$CorrectionFromJson(Map<String, dynamic> json) {
  return _Correction.fromJson(json);
}

/// @nodoc
class _$CorrectionTearOff {
  const _$CorrectionTearOff();

  _Correction call(
      {@JsonKey(name: 'originalTexts') required List<String> originalTexts,
      @JsonKey(name: 'correctedTexts') required List<String> correctedTexts,
      @JsonKey(name: 'comment') required String comment,
      @JsonKey(name: 'audioUrl') required String audioUrl,
      @JsonKey(name: 'messages') required List<CorrectionMessage> messages,
      @JsonKey(name: 'review') @ReviewConverter() required Review review,
      @JsonKey(name: 'vocabularyScore') required int vocabularyScore,
      @JsonKey(name: 'grammarScore') required int grammarScore,
      @JsonKey(name: 'fluencyScore') required int fluencyScore,
      @JsonKey(name: 'pronunciationScore') required int pronunciationScore,
      @JsonKey(name: 'correctedUserId') String? correctedUserId,
      @JsonKey(name: 'correctedAt') @DateTimeConverter() DateTime? correctedAt,
      @JsonKey(ignore: true) User? correctedUser}) {
    return _Correction(
      originalTexts: originalTexts,
      correctedTexts: correctedTexts,
      comment: comment,
      audioUrl: audioUrl,
      messages: messages,
      review: review,
      vocabularyScore: vocabularyScore,
      grammarScore: grammarScore,
      fluencyScore: fluencyScore,
      pronunciationScore: pronunciationScore,
      correctedUserId: correctedUserId,
      correctedAt: correctedAt,
      correctedUser: correctedUser,
    );
  }

  Correction fromJson(Map<String, Object?> json) {
    return Correction.fromJson(json);
  }
}

/// @nodoc
const $Correction = _$CorrectionTearOff();

/// @nodoc
mixin _$Correction {
  @JsonKey(name: 'originalTexts')
  List<String> get originalTexts => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctedTexts')
  List<String> get correctedTexts => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'audioUrl')
  String get audioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'messages')
  List<CorrectionMessage> get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'review')
  @ReviewConverter()
  Review get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'vocabularyScore')
  int get vocabularyScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'grammarScore')
  int get grammarScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'fluencyScore')
  int get fluencyScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'pronunciationScore')
  int get pronunciationScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctedUserId')
  String? get correctedUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctedAt')
  @DateTimeConverter()
  DateTime? get correctedAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  User? get correctedUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrectionCopyWith<Correction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionCopyWith<$Res> {
  factory $CorrectionCopyWith(
          Correction value, $Res Function(Correction) then) =
      _$CorrectionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'originalTexts') List<String> originalTexts,
      @JsonKey(name: 'correctedTexts') List<String> correctedTexts,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'audioUrl') String audioUrl,
      @JsonKey(name: 'messages') List<CorrectionMessage> messages,
      @JsonKey(name: 'review') @ReviewConverter() Review review,
      @JsonKey(name: 'vocabularyScore') int vocabularyScore,
      @JsonKey(name: 'grammarScore') int grammarScore,
      @JsonKey(name: 'fluencyScore') int fluencyScore,
      @JsonKey(name: 'pronunciationScore') int pronunciationScore,
      @JsonKey(name: 'correctedUserId') String? correctedUserId,
      @JsonKey(name: 'correctedAt') @DateTimeConverter() DateTime? correctedAt,
      @JsonKey(ignore: true) User? correctedUser});

  $UserCopyWith<$Res>? get correctedUser;
}

/// @nodoc
class _$CorrectionCopyWithImpl<$Res> implements $CorrectionCopyWith<$Res> {
  _$CorrectionCopyWithImpl(this._value, this._then);

  final Correction _value;
  // ignore: unused_field
  final $Res Function(Correction) _then;

  @override
  $Res call({
    Object? originalTexts = freezed,
    Object? correctedTexts = freezed,
    Object? comment = freezed,
    Object? audioUrl = freezed,
    Object? messages = freezed,
    Object? review = freezed,
    Object? vocabularyScore = freezed,
    Object? grammarScore = freezed,
    Object? fluencyScore = freezed,
    Object? pronunciationScore = freezed,
    Object? correctedUserId = freezed,
    Object? correctedAt = freezed,
    Object? correctedUser = freezed,
  }) {
    return _then(_value.copyWith(
      originalTexts: originalTexts == freezed
          ? _value.originalTexts
          : originalTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctedTexts: correctedTexts == freezed
          ? _value.correctedTexts
          : correctedTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<CorrectionMessage>,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      vocabularyScore: vocabularyScore == freezed
          ? _value.vocabularyScore
          : vocabularyScore // ignore: cast_nullable_to_non_nullable
              as int,
      grammarScore: grammarScore == freezed
          ? _value.grammarScore
          : grammarScore // ignore: cast_nullable_to_non_nullable
              as int,
      fluencyScore: fluencyScore == freezed
          ? _value.fluencyScore
          : fluencyScore // ignore: cast_nullable_to_non_nullable
              as int,
      pronunciationScore: pronunciationScore == freezed
          ? _value.pronunciationScore
          : pronunciationScore // ignore: cast_nullable_to_non_nullable
              as int,
      correctedUserId: correctedUserId == freezed
          ? _value.correctedUserId
          : correctedUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      correctedAt: correctedAt == freezed
          ? _value.correctedAt
          : correctedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      correctedUser: correctedUser == freezed
          ? _value.correctedUser
          : correctedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get correctedUser {
    if (_value.correctedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.correctedUser!, (value) {
      return _then(_value.copyWith(correctedUser: value));
    });
  }
}

/// @nodoc
abstract class _$CorrectionCopyWith<$Res> implements $CorrectionCopyWith<$Res> {
  factory _$CorrectionCopyWith(
          _Correction value, $Res Function(_Correction) then) =
      __$CorrectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'originalTexts') List<String> originalTexts,
      @JsonKey(name: 'correctedTexts') List<String> correctedTexts,
      @JsonKey(name: 'comment') String comment,
      @JsonKey(name: 'audioUrl') String audioUrl,
      @JsonKey(name: 'messages') List<CorrectionMessage> messages,
      @JsonKey(name: 'review') @ReviewConverter() Review review,
      @JsonKey(name: 'vocabularyScore') int vocabularyScore,
      @JsonKey(name: 'grammarScore') int grammarScore,
      @JsonKey(name: 'fluencyScore') int fluencyScore,
      @JsonKey(name: 'pronunciationScore') int pronunciationScore,
      @JsonKey(name: 'correctedUserId') String? correctedUserId,
      @JsonKey(name: 'correctedAt') @DateTimeConverter() DateTime? correctedAt,
      @JsonKey(ignore: true) User? correctedUser});

  @override
  $UserCopyWith<$Res>? get correctedUser;
}

/// @nodoc
class __$CorrectionCopyWithImpl<$Res> extends _$CorrectionCopyWithImpl<$Res>
    implements _$CorrectionCopyWith<$Res> {
  __$CorrectionCopyWithImpl(
      _Correction _value, $Res Function(_Correction) _then)
      : super(_value, (v) => _then(v as _Correction));

  @override
  _Correction get _value => super._value as _Correction;

  @override
  $Res call({
    Object? originalTexts = freezed,
    Object? correctedTexts = freezed,
    Object? comment = freezed,
    Object? audioUrl = freezed,
    Object? messages = freezed,
    Object? review = freezed,
    Object? vocabularyScore = freezed,
    Object? grammarScore = freezed,
    Object? fluencyScore = freezed,
    Object? pronunciationScore = freezed,
    Object? correctedUserId = freezed,
    Object? correctedAt = freezed,
    Object? correctedUser = freezed,
  }) {
    return _then(_Correction(
      originalTexts: originalTexts == freezed
          ? _value.originalTexts
          : originalTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctedTexts: correctedTexts == freezed
          ? _value.correctedTexts
          : correctedTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<CorrectionMessage>,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
      vocabularyScore: vocabularyScore == freezed
          ? _value.vocabularyScore
          : vocabularyScore // ignore: cast_nullable_to_non_nullable
              as int,
      grammarScore: grammarScore == freezed
          ? _value.grammarScore
          : grammarScore // ignore: cast_nullable_to_non_nullable
              as int,
      fluencyScore: fluencyScore == freezed
          ? _value.fluencyScore
          : fluencyScore // ignore: cast_nullable_to_non_nullable
              as int,
      pronunciationScore: pronunciationScore == freezed
          ? _value.pronunciationScore
          : pronunciationScore // ignore: cast_nullable_to_non_nullable
              as int,
      correctedUserId: correctedUserId == freezed
          ? _value.correctedUserId
          : correctedUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      correctedAt: correctedAt == freezed
          ? _value.correctedAt
          : correctedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      correctedUser: correctedUser == freezed
          ? _value.correctedUser
          : correctedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Correction extends _Correction {
  const _$_Correction(
      {@JsonKey(name: 'originalTexts') required this.originalTexts,
      @JsonKey(name: 'correctedTexts') required this.correctedTexts,
      @JsonKey(name: 'comment') required this.comment,
      @JsonKey(name: 'audioUrl') required this.audioUrl,
      @JsonKey(name: 'messages') required this.messages,
      @JsonKey(name: 'review') @ReviewConverter() required this.review,
      @JsonKey(name: 'vocabularyScore') required this.vocabularyScore,
      @JsonKey(name: 'grammarScore') required this.grammarScore,
      @JsonKey(name: 'fluencyScore') required this.fluencyScore,
      @JsonKey(name: 'pronunciationScore') required this.pronunciationScore,
      @JsonKey(name: 'correctedUserId') this.correctedUserId,
      @JsonKey(name: 'correctedAt') @DateTimeConverter() this.correctedAt,
      @JsonKey(ignore: true) this.correctedUser})
      : super._();

  factory _$_Correction.fromJson(Map<String, dynamic> json) =>
      _$$_CorrectionFromJson(json);

  @override
  @JsonKey(name: 'originalTexts')
  final List<String> originalTexts;
  @override
  @JsonKey(name: 'correctedTexts')
  final List<String> correctedTexts;
  @override
  @JsonKey(name: 'comment')
  final String comment;
  @override
  @JsonKey(name: 'audioUrl')
  final String audioUrl;
  @override
  @JsonKey(name: 'messages')
  final List<CorrectionMessage> messages;
  @override
  @JsonKey(name: 'review')
  @ReviewConverter()
  final Review review;
  @override
  @JsonKey(name: 'vocabularyScore')
  final int vocabularyScore;
  @override
  @JsonKey(name: 'grammarScore')
  final int grammarScore;
  @override
  @JsonKey(name: 'fluencyScore')
  final int fluencyScore;
  @override
  @JsonKey(name: 'pronunciationScore')
  final int pronunciationScore;
  @override
  @JsonKey(name: 'correctedUserId')
  final String? correctedUserId;
  @override
  @JsonKey(name: 'correctedAt')
  @DateTimeConverter()
  final DateTime? correctedAt;
  @override
  @JsonKey(ignore: true)
  final User? correctedUser;

  @override
  String toString() {
    return 'Correction(originalTexts: $originalTexts, correctedTexts: $correctedTexts, comment: $comment, audioUrl: $audioUrl, messages: $messages, review: $review, vocabularyScore: $vocabularyScore, grammarScore: $grammarScore, fluencyScore: $fluencyScore, pronunciationScore: $pronunciationScore, correctedUserId: $correctedUserId, correctedAt: $correctedAt, correctedUser: $correctedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Correction &&
            const DeepCollectionEquality()
                .equals(other.originalTexts, originalTexts) &&
            const DeepCollectionEquality()
                .equals(other.correctedTexts, correctedTexts) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.audioUrl, audioUrl) &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality()
                .equals(other.vocabularyScore, vocabularyScore) &&
            const DeepCollectionEquality()
                .equals(other.grammarScore, grammarScore) &&
            const DeepCollectionEquality()
                .equals(other.fluencyScore, fluencyScore) &&
            const DeepCollectionEquality()
                .equals(other.pronunciationScore, pronunciationScore) &&
            const DeepCollectionEquality()
                .equals(other.correctedUserId, correctedUserId) &&
            const DeepCollectionEquality()
                .equals(other.correctedAt, correctedAt) &&
            const DeepCollectionEquality()
                .equals(other.correctedUser, correctedUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(originalTexts),
      const DeepCollectionEquality().hash(correctedTexts),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(audioUrl),
      const DeepCollectionEquality().hash(messages),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(vocabularyScore),
      const DeepCollectionEquality().hash(grammarScore),
      const DeepCollectionEquality().hash(fluencyScore),
      const DeepCollectionEquality().hash(pronunciationScore),
      const DeepCollectionEquality().hash(correctedUserId),
      const DeepCollectionEquality().hash(correctedAt),
      const DeepCollectionEquality().hash(correctedUser));

  @JsonKey(ignore: true)
  @override
  _$CorrectionCopyWith<_Correction> get copyWith =>
      __$CorrectionCopyWithImpl<_Correction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrectionToJson(this);
  }
}

abstract class _Correction extends Correction {
  const factory _Correction(
      {@JsonKey(name: 'originalTexts') required List<String> originalTexts,
      @JsonKey(name: 'correctedTexts') required List<String> correctedTexts,
      @JsonKey(name: 'comment') required String comment,
      @JsonKey(name: 'audioUrl') required String audioUrl,
      @JsonKey(name: 'messages') required List<CorrectionMessage> messages,
      @JsonKey(name: 'review') @ReviewConverter() required Review review,
      @JsonKey(name: 'vocabularyScore') required int vocabularyScore,
      @JsonKey(name: 'grammarScore') required int grammarScore,
      @JsonKey(name: 'fluencyScore') required int fluencyScore,
      @JsonKey(name: 'pronunciationScore') required int pronunciationScore,
      @JsonKey(name: 'correctedUserId') String? correctedUserId,
      @JsonKey(name: 'correctedAt') @DateTimeConverter() DateTime? correctedAt,
      @JsonKey(ignore: true) User? correctedUser}) = _$_Correction;
  const _Correction._() : super._();

  factory _Correction.fromJson(Map<String, dynamic> json) =
      _$_Correction.fromJson;

  @override
  @JsonKey(name: 'originalTexts')
  List<String> get originalTexts;
  @override
  @JsonKey(name: 'correctedTexts')
  List<String> get correctedTexts;
  @override
  @JsonKey(name: 'comment')
  String get comment;
  @override
  @JsonKey(name: 'audioUrl')
  String get audioUrl;
  @override
  @JsonKey(name: 'messages')
  List<CorrectionMessage> get messages;
  @override
  @JsonKey(name: 'review')
  @ReviewConverter()
  Review get review;
  @override
  @JsonKey(name: 'vocabularyScore')
  int get vocabularyScore;
  @override
  @JsonKey(name: 'grammarScore')
  int get grammarScore;
  @override
  @JsonKey(name: 'fluencyScore')
  int get fluencyScore;
  @override
  @JsonKey(name: 'pronunciationScore')
  int get pronunciationScore;
  @override
  @JsonKey(name: 'correctedUserId')
  String? get correctedUserId;
  @override
  @JsonKey(name: 'correctedAt')
  @DateTimeConverter()
  DateTime? get correctedAt;
  @override
  @JsonKey(ignore: true)
  User? get correctedUser;
  @override
  @JsonKey(ignore: true)
  _$CorrectionCopyWith<_Correction> get copyWith =>
      throw _privateConstructorUsedError;
}
