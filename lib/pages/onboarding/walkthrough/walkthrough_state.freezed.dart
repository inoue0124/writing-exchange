// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'walkthrough_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalkthroughStateTearOff {
  const _$WalkthroughStateTearOff();

  _WalkthroughState call({int currentPageIndex = 0, bool isLastpage = false}) {
    return _WalkthroughState(
      currentPageIndex: currentPageIndex,
      isLastpage: isLastpage,
    );
  }
}

/// @nodoc
const $WalkthroughState = _$WalkthroughStateTearOff();

/// @nodoc
mixin _$WalkthroughState {
  int get currentPageIndex => throw _privateConstructorUsedError;
  bool get isLastpage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalkthroughStateCopyWith<WalkthroughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkthroughStateCopyWith<$Res> {
  factory $WalkthroughStateCopyWith(
          WalkthroughState value, $Res Function(WalkthroughState) then) =
      _$WalkthroughStateCopyWithImpl<$Res>;
  $Res call({int currentPageIndex, bool isLastpage});
}

/// @nodoc
class _$WalkthroughStateCopyWithImpl<$Res>
    implements $WalkthroughStateCopyWith<$Res> {
  _$WalkthroughStateCopyWithImpl(this._value, this._then);

  final WalkthroughState _value;
  // ignore: unused_field
  final $Res Function(WalkthroughState) _then;

  @override
  $Res call({
    Object? currentPageIndex = freezed,
    Object? isLastpage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPageIndex: currentPageIndex == freezed
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLastpage: isLastpage == freezed
          ? _value.isLastpage
          : isLastpage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WalkthroughStateCopyWith<$Res>
    implements $WalkthroughStateCopyWith<$Res> {
  factory _$WalkthroughStateCopyWith(
          _WalkthroughState value, $Res Function(_WalkthroughState) then) =
      __$WalkthroughStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentPageIndex, bool isLastpage});
}

/// @nodoc
class __$WalkthroughStateCopyWithImpl<$Res>
    extends _$WalkthroughStateCopyWithImpl<$Res>
    implements _$WalkthroughStateCopyWith<$Res> {
  __$WalkthroughStateCopyWithImpl(
      _WalkthroughState _value, $Res Function(_WalkthroughState) _then)
      : super(_value, (v) => _then(v as _WalkthroughState));

  @override
  _WalkthroughState get _value => super._value as _WalkthroughState;

  @override
  $Res call({
    Object? currentPageIndex = freezed,
    Object? isLastpage = freezed,
  }) {
    return _then(_WalkthroughState(
      currentPageIndex: currentPageIndex == freezed
          ? _value.currentPageIndex
          : currentPageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLastpage: isLastpage == freezed
          ? _value.isLastpage
          : isLastpage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WalkthroughState implements _WalkthroughState {
  const _$_WalkthroughState(
      {this.currentPageIndex = 0, this.isLastpage = false});

  @JsonKey()
  @override
  final int currentPageIndex;
  @JsonKey()
  @override
  final bool isLastpage;

  @override
  String toString() {
    return 'WalkthroughState(currentPageIndex: $currentPageIndex, isLastpage: $isLastpage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalkthroughState &&
            const DeepCollectionEquality()
                .equals(other.currentPageIndex, currentPageIndex) &&
            const DeepCollectionEquality()
                .equals(other.isLastpage, isLastpage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentPageIndex),
      const DeepCollectionEquality().hash(isLastpage));

  @JsonKey(ignore: true)
  @override
  _$WalkthroughStateCopyWith<_WalkthroughState> get copyWith =>
      __$WalkthroughStateCopyWithImpl<_WalkthroughState>(this, _$identity);
}

abstract class _WalkthroughState implements WalkthroughState {
  const factory _WalkthroughState({int currentPageIndex, bool isLastpage}) =
      _$_WalkthroughState;

  @override
  int get currentPageIndex;
  @override
  bool get isLastpage;
  @override
  @JsonKey(ignore: true)
  _$WalkthroughStateCopyWith<_WalkthroughState> get copyWith =>
      throw _privateConstructorUsedError;
}
