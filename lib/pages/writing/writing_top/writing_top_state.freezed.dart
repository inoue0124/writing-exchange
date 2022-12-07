// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'writing_top_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WritingTopStateTearOff {
  const _$WritingTopStateTearOff();

  _WritingTopState call(
      {int correctionCount = 0, int reviewPoint = 0, int creditCount = 0}) {
    return _WritingTopState(
      correctionCount: correctionCount,
      reviewPoint: reviewPoint,
      creditCount: creditCount,
    );
  }
}

/// @nodoc
const $WritingTopState = _$WritingTopStateTearOff();

/// @nodoc
mixin _$WritingTopState {
  int get correctionCount => throw _privateConstructorUsedError;
  int get reviewPoint => throw _privateConstructorUsedError;
  int get creditCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WritingTopStateCopyWith<WritingTopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritingTopStateCopyWith<$Res> {
  factory $WritingTopStateCopyWith(
          WritingTopState value, $Res Function(WritingTopState) then) =
      _$WritingTopStateCopyWithImpl<$Res>;
  $Res call({int correctionCount, int reviewPoint, int creditCount});
}

/// @nodoc
class _$WritingTopStateCopyWithImpl<$Res>
    implements $WritingTopStateCopyWith<$Res> {
  _$WritingTopStateCopyWithImpl(this._value, this._then);

  final WritingTopState _value;
  // ignore: unused_field
  final $Res Function(WritingTopState) _then;

  @override
  $Res call({
    Object? correctionCount = freezed,
    Object? reviewPoint = freezed,
    Object? creditCount = freezed,
  }) {
    return _then(_value.copyWith(
      correctionCount: correctionCount == freezed
          ? _value.correctionCount
          : correctionCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewPoint: reviewPoint == freezed
          ? _value.reviewPoint
          : reviewPoint // ignore: cast_nullable_to_non_nullable
              as int,
      creditCount: creditCount == freezed
          ? _value.creditCount
          : creditCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WritingTopStateCopyWith<$Res>
    implements $WritingTopStateCopyWith<$Res> {
  factory _$WritingTopStateCopyWith(
          _WritingTopState value, $Res Function(_WritingTopState) then) =
      __$WritingTopStateCopyWithImpl<$Res>;
  @override
  $Res call({int correctionCount, int reviewPoint, int creditCount});
}

/// @nodoc
class __$WritingTopStateCopyWithImpl<$Res>
    extends _$WritingTopStateCopyWithImpl<$Res>
    implements _$WritingTopStateCopyWith<$Res> {
  __$WritingTopStateCopyWithImpl(
      _WritingTopState _value, $Res Function(_WritingTopState) _then)
      : super(_value, (v) => _then(v as _WritingTopState));

  @override
  _WritingTopState get _value => super._value as _WritingTopState;

  @override
  $Res call({
    Object? correctionCount = freezed,
    Object? reviewPoint = freezed,
    Object? creditCount = freezed,
  }) {
    return _then(_WritingTopState(
      correctionCount: correctionCount == freezed
          ? _value.correctionCount
          : correctionCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewPoint: reviewPoint == freezed
          ? _value.reviewPoint
          : reviewPoint // ignore: cast_nullable_to_non_nullable
              as int,
      creditCount: creditCount == freezed
          ? _value.creditCount
          : creditCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WritingTopState implements _WritingTopState {
  const _$_WritingTopState(
      {this.correctionCount = 0, this.reviewPoint = 0, this.creditCount = 0});

  @JsonKey()
  @override
  final int correctionCount;
  @JsonKey()
  @override
  final int reviewPoint;
  @JsonKey()
  @override
  final int creditCount;

  @override
  String toString() {
    return 'WritingTopState(correctionCount: $correctionCount, reviewPoint: $reviewPoint, creditCount: $creditCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WritingTopState &&
            const DeepCollectionEquality()
                .equals(other.correctionCount, correctionCount) &&
            const DeepCollectionEquality()
                .equals(other.reviewPoint, reviewPoint) &&
            const DeepCollectionEquality()
                .equals(other.creditCount, creditCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(correctionCount),
      const DeepCollectionEquality().hash(reviewPoint),
      const DeepCollectionEquality().hash(creditCount));

  @JsonKey(ignore: true)
  @override
  _$WritingTopStateCopyWith<_WritingTopState> get copyWith =>
      __$WritingTopStateCopyWithImpl<_WritingTopState>(this, _$identity);
}

abstract class _WritingTopState implements WritingTopState {
  const factory _WritingTopState(
      {int correctionCount,
      int reviewPoint,
      int creditCount}) = _$_WritingTopState;

  @override
  int get correctionCount;
  @override
  int get reviewPoint;
  @override
  int get creditCount;
  @override
  @JsonKey(ignore: true)
  _$WritingTopStateCopyWith<_WritingTopState> get copyWith =>
      throw _privateConstructorUsedError;
}
