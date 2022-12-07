// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'correction_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CorrectionHomeStateTearOff {
  const _$CorrectionHomeStateTearOff();

  _CorrectionHomeState call(
      {int correctionCount = 0, int reviewPoint = 0, int creditCount = 0}) {
    return _CorrectionHomeState(
      correctionCount: correctionCount,
      reviewPoint: reviewPoint,
      creditCount: creditCount,
    );
  }
}

/// @nodoc
const $CorrectionHomeState = _$CorrectionHomeStateTearOff();

/// @nodoc
mixin _$CorrectionHomeState {
  int get correctionCount => throw _privateConstructorUsedError;
  int get reviewPoint => throw _privateConstructorUsedError;
  int get creditCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CorrectionHomeStateCopyWith<CorrectionHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionHomeStateCopyWith<$Res> {
  factory $CorrectionHomeStateCopyWith(
          CorrectionHomeState value, $Res Function(CorrectionHomeState) then) =
      _$CorrectionHomeStateCopyWithImpl<$Res>;
  $Res call({int correctionCount, int reviewPoint, int creditCount});
}

/// @nodoc
class _$CorrectionHomeStateCopyWithImpl<$Res>
    implements $CorrectionHomeStateCopyWith<$Res> {
  _$CorrectionHomeStateCopyWithImpl(this._value, this._then);

  final CorrectionHomeState _value;
  // ignore: unused_field
  final $Res Function(CorrectionHomeState) _then;

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
abstract class _$CorrectionHomeStateCopyWith<$Res>
    implements $CorrectionHomeStateCopyWith<$Res> {
  factory _$CorrectionHomeStateCopyWith(_CorrectionHomeState value,
          $Res Function(_CorrectionHomeState) then) =
      __$CorrectionHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int correctionCount, int reviewPoint, int creditCount});
}

/// @nodoc
class __$CorrectionHomeStateCopyWithImpl<$Res>
    extends _$CorrectionHomeStateCopyWithImpl<$Res>
    implements _$CorrectionHomeStateCopyWith<$Res> {
  __$CorrectionHomeStateCopyWithImpl(
      _CorrectionHomeState _value, $Res Function(_CorrectionHomeState) _then)
      : super(_value, (v) => _then(v as _CorrectionHomeState));

  @override
  _CorrectionHomeState get _value => super._value as _CorrectionHomeState;

  @override
  $Res call({
    Object? correctionCount = freezed,
    Object? reviewPoint = freezed,
    Object? creditCount = freezed,
  }) {
    return _then(_CorrectionHomeState(
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

class _$_CorrectionHomeState implements _CorrectionHomeState {
  const _$_CorrectionHomeState(
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
    return 'CorrectionHomeState(correctionCount: $correctionCount, reviewPoint: $reviewPoint, creditCount: $creditCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorrectionHomeState &&
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
  _$CorrectionHomeStateCopyWith<_CorrectionHomeState> get copyWith =>
      __$CorrectionHomeStateCopyWithImpl<_CorrectionHomeState>(
          this, _$identity);
}

abstract class _CorrectionHomeState implements CorrectionHomeState {
  const factory _CorrectionHomeState(
      {int correctionCount,
      int reviewPoint,
      int creditCount}) = _$_CorrectionHomeState;

  @override
  int get correctionCount;
  @override
  int get reviewPoint;
  @override
  int get creditCount;
  @override
  @JsonKey(ignore: true)
  _$CorrectionHomeStateCopyWith<_CorrectionHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
