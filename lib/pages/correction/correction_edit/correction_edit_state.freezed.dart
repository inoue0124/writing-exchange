// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'correction_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CorrectionEditStateTearOff {
  const _$CorrectionEditStateTearOff();

  _CorrectionEditState call(
      {List<String> correctedTexts = const [],
      List<String> originalTexts = const [],
      String comment = "",
      Post? post = null}) {
    return _CorrectionEditState(
      correctedTexts: correctedTexts,
      originalTexts: originalTexts,
      comment: comment,
      post: post,
    );
  }
}

/// @nodoc
const $CorrectionEditState = _$CorrectionEditStateTearOff();

/// @nodoc
mixin _$CorrectionEditState {
  List<String> get correctedTexts => throw _privateConstructorUsedError;
  List<String> get originalTexts => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  Post? get post => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CorrectionEditStateCopyWith<CorrectionEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionEditStateCopyWith<$Res> {
  factory $CorrectionEditStateCopyWith(
          CorrectionEditState value, $Res Function(CorrectionEditState) then) =
      _$CorrectionEditStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> correctedTexts,
      List<String> originalTexts,
      String comment,
      Post? post});

  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class _$CorrectionEditStateCopyWithImpl<$Res>
    implements $CorrectionEditStateCopyWith<$Res> {
  _$CorrectionEditStateCopyWithImpl(this._value, this._then);

  final CorrectionEditState _value;
  // ignore: unused_field
  final $Res Function(CorrectionEditState) _then;

  @override
  $Res call({
    Object? correctedTexts = freezed,
    Object? originalTexts = freezed,
    Object? comment = freezed,
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
      correctedTexts: correctedTexts == freezed
          ? _value.correctedTexts
          : correctedTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalTexts: originalTexts == freezed
          ? _value.originalTexts
          : originalTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }

  @override
  $PostCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$CorrectionEditStateCopyWith<$Res>
    implements $CorrectionEditStateCopyWith<$Res> {
  factory _$CorrectionEditStateCopyWith(_CorrectionEditState value,
          $Res Function(_CorrectionEditState) then) =
      __$CorrectionEditStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> correctedTexts,
      List<String> originalTexts,
      String comment,
      Post? post});

  @override
  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class __$CorrectionEditStateCopyWithImpl<$Res>
    extends _$CorrectionEditStateCopyWithImpl<$Res>
    implements _$CorrectionEditStateCopyWith<$Res> {
  __$CorrectionEditStateCopyWithImpl(
      _CorrectionEditState _value, $Res Function(_CorrectionEditState) _then)
      : super(_value, (v) => _then(v as _CorrectionEditState));

  @override
  _CorrectionEditState get _value => super._value as _CorrectionEditState;

  @override
  $Res call({
    Object? correctedTexts = freezed,
    Object? originalTexts = freezed,
    Object? comment = freezed,
    Object? post = freezed,
  }) {
    return _then(_CorrectionEditState(
      correctedTexts: correctedTexts == freezed
          ? _value.correctedTexts
          : correctedTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      originalTexts: originalTexts == freezed
          ? _value.originalTexts
          : originalTexts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }
}

/// @nodoc

class _$_CorrectionEditState implements _CorrectionEditState {
  const _$_CorrectionEditState(
      {this.correctedTexts = const [],
      this.originalTexts = const [],
      this.comment = "",
      this.post = null});

  @JsonKey()
  @override
  final List<String> correctedTexts;
  @JsonKey()
  @override
  final List<String> originalTexts;
  @JsonKey()
  @override
  final String comment;
  @JsonKey()
  @override
  final Post? post;

  @override
  String toString() {
    return 'CorrectionEditState(correctedTexts: $correctedTexts, originalTexts: $originalTexts, comment: $comment, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorrectionEditState &&
            const DeepCollectionEquality()
                .equals(other.correctedTexts, correctedTexts) &&
            const DeepCollectionEquality()
                .equals(other.originalTexts, originalTexts) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(correctedTexts),
      const DeepCollectionEquality().hash(originalTexts),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$CorrectionEditStateCopyWith<_CorrectionEditState> get copyWith =>
      __$CorrectionEditStateCopyWithImpl<_CorrectionEditState>(
          this, _$identity);
}

abstract class _CorrectionEditState implements CorrectionEditState {
  const factory _CorrectionEditState(
      {List<String> correctedTexts,
      List<String> originalTexts,
      String comment,
      Post? post}) = _$_CorrectionEditState;

  @override
  List<String> get correctedTexts;
  @override
  List<String> get originalTexts;
  @override
  String get comment;
  @override
  Post? get post;
  @override
  @JsonKey(ignore: true)
  _$CorrectionEditStateCopyWith<_CorrectionEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
