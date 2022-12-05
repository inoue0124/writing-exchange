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
      {dynamic post = const Post(),
      String editedText = "",
      String comment = ""}) {
    return _CorrectionEditState(
      post: post,
      editedText: editedText,
      comment: comment,
    );
  }
}

/// @nodoc
const $CorrectionEditState = _$CorrectionEditStateTearOff();

/// @nodoc
mixin _$CorrectionEditState {
  dynamic get post => throw _privateConstructorUsedError;
  String get editedText => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CorrectionEditStateCopyWith<CorrectionEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionEditStateCopyWith<$Res> {
  factory $CorrectionEditStateCopyWith(
          CorrectionEditState value, $Res Function(CorrectionEditState) then) =
      _$CorrectionEditStateCopyWithImpl<$Res>;
  $Res call({dynamic post, String editedText, String comment});
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
    Object? post = freezed,
    Object? editedText = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as dynamic,
      editedText: editedText == freezed
          ? _value.editedText
          : editedText // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CorrectionEditStateCopyWith<$Res>
    implements $CorrectionEditStateCopyWith<$Res> {
  factory _$CorrectionEditStateCopyWith(_CorrectionEditState value,
          $Res Function(_CorrectionEditState) then) =
      __$CorrectionEditStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic post, String editedText, String comment});
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
    Object? post = freezed,
    Object? editedText = freezed,
    Object? comment = freezed,
  }) {
    return _then(_CorrectionEditState(
      post: post == freezed ? _value.post : post,
      editedText: editedText == freezed
          ? _value.editedText
          : editedText // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CorrectionEditState implements _CorrectionEditState {
  const _$_CorrectionEditState(
      {this.post = const Post(), this.editedText = "", this.comment = ""});

  @JsonKey()
  @override
  final dynamic post;
  @JsonKey()
  @override
  final String editedText;
  @JsonKey()
  @override
  final String comment;

  @override
  String toString() {
    return 'CorrectionEditState(post: $post, editedText: $editedText, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorrectionEditState &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality()
                .equals(other.editedText, editedText) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(editedText),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$CorrectionEditStateCopyWith<_CorrectionEditState> get copyWith =>
      __$CorrectionEditStateCopyWithImpl<_CorrectionEditState>(
          this, _$identity);
}

abstract class _CorrectionEditState implements CorrectionEditState {
  const factory _CorrectionEditState(
      {dynamic post,
      String editedText,
      String comment}) = _$_CorrectionEditState;

  @override
  dynamic get post;
  @override
  String get editedText;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$CorrectionEditStateCopyWith<_CorrectionEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
