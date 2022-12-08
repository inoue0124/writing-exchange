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

  _WritingTopState call({List<Post> writings = const []}) {
    return _WritingTopState(
      writings: writings,
    );
  }
}

/// @nodoc
const $WritingTopState = _$WritingTopStateTearOff();

/// @nodoc
mixin _$WritingTopState {
  List<Post> get writings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WritingTopStateCopyWith<WritingTopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritingTopStateCopyWith<$Res> {
  factory $WritingTopStateCopyWith(
          WritingTopState value, $Res Function(WritingTopState) then) =
      _$WritingTopStateCopyWithImpl<$Res>;
  $Res call({List<Post> writings});
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
    Object? writings = freezed,
  }) {
    return _then(_value.copyWith(
      writings: writings == freezed
          ? _value.writings
          : writings // ignore: cast_nullable_to_non_nullable
              as List<Post>,
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
  $Res call({List<Post> writings});
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
    Object? writings = freezed,
  }) {
    return _then(_WritingTopState(
      writings: writings == freezed
          ? _value.writings
          : writings // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_WritingTopState implements _WritingTopState {
  const _$_WritingTopState({this.writings = const []});

  @JsonKey()
  @override
  final List<Post> writings;

  @override
  String toString() {
    return 'WritingTopState(writings: $writings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WritingTopState &&
            const DeepCollectionEquality().equals(other.writings, writings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(writings));

  @JsonKey(ignore: true)
  @override
  _$WritingTopStateCopyWith<_WritingTopState> get copyWith =>
      __$WritingTopStateCopyWithImpl<_WritingTopState>(this, _$identity);
}

abstract class _WritingTopState implements WritingTopState {
  const factory _WritingTopState({List<Post> writings}) = _$_WritingTopState;

  @override
  List<Post> get writings;
  @override
  @JsonKey(ignore: true)
  _$WritingTopStateCopyWith<_WritingTopState> get copyWith =>
      throw _privateConstructorUsedError;
}
