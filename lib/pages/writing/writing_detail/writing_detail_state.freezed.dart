// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'writing_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WritingDetailStateTearOff {
  const _$WritingDetailStateTearOff();

  _WritingDetailState call({Post? post = null}) {
    return _WritingDetailState(
      post: post,
    );
  }
}

/// @nodoc
const $WritingDetailState = _$WritingDetailStateTearOff();

/// @nodoc
mixin _$WritingDetailState {
  Post? get post => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WritingDetailStateCopyWith<WritingDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritingDetailStateCopyWith<$Res> {
  factory $WritingDetailStateCopyWith(
          WritingDetailState value, $Res Function(WritingDetailState) then) =
      _$WritingDetailStateCopyWithImpl<$Res>;
  $Res call({Post? post});

  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class _$WritingDetailStateCopyWithImpl<$Res>
    implements $WritingDetailStateCopyWith<$Res> {
  _$WritingDetailStateCopyWithImpl(this._value, this._then);

  final WritingDetailState _value;
  // ignore: unused_field
  final $Res Function(WritingDetailState) _then;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$WritingDetailStateCopyWith<$Res>
    implements $WritingDetailStateCopyWith<$Res> {
  factory _$WritingDetailStateCopyWith(
          _WritingDetailState value, $Res Function(_WritingDetailState) then) =
      __$WritingDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Post? post});

  @override
  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class __$WritingDetailStateCopyWithImpl<$Res>
    extends _$WritingDetailStateCopyWithImpl<$Res>
    implements _$WritingDetailStateCopyWith<$Res> {
  __$WritingDetailStateCopyWithImpl(
      _WritingDetailState _value, $Res Function(_WritingDetailState) _then)
      : super(_value, (v) => _then(v as _WritingDetailState));

  @override
  _WritingDetailState get _value => super._value as _WritingDetailState;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_WritingDetailState(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
    ));
  }
}

/// @nodoc

class _$_WritingDetailState implements _WritingDetailState {
  const _$_WritingDetailState({this.post = null});

  @JsonKey()
  @override
  final Post? post;

  @override
  String toString() {
    return 'WritingDetailState(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WritingDetailState &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$WritingDetailStateCopyWith<_WritingDetailState> get copyWith =>
      __$WritingDetailStateCopyWithImpl<_WritingDetailState>(this, _$identity);
}

abstract class _WritingDetailState implements WritingDetailState {
  const factory _WritingDetailState({Post? post}) = _$_WritingDetailState;

  @override
  Post? get post;
  @override
  @JsonKey(ignore: true)
  _$WritingDetailStateCopyWith<_WritingDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
