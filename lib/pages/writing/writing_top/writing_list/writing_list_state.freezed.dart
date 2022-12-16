// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'writing_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WritingListStateTearOff {
  const _$WritingListStateTearOff();

  _WritingListState call({List<Post> writings = const []}) {
    return _WritingListState(
      writings: writings,
    );
  }
}

/// @nodoc
const $WritingListState = _$WritingListStateTearOff();

/// @nodoc
mixin _$WritingListState {
  List<Post> get writings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WritingListStateCopyWith<WritingListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritingListStateCopyWith<$Res> {
  factory $WritingListStateCopyWith(
          WritingListState value, $Res Function(WritingListState) then) =
      _$WritingListStateCopyWithImpl<$Res>;
  $Res call({List<Post> writings});
}

/// @nodoc
class _$WritingListStateCopyWithImpl<$Res>
    implements $WritingListStateCopyWith<$Res> {
  _$WritingListStateCopyWithImpl(this._value, this._then);

  final WritingListState _value;
  // ignore: unused_field
  final $Res Function(WritingListState) _then;

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
abstract class _$WritingListStateCopyWith<$Res>
    implements $WritingListStateCopyWith<$Res> {
  factory _$WritingListStateCopyWith(
          _WritingListState value, $Res Function(_WritingListState) then) =
      __$WritingListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> writings});
}

/// @nodoc
class __$WritingListStateCopyWithImpl<$Res>
    extends _$WritingListStateCopyWithImpl<$Res>
    implements _$WritingListStateCopyWith<$Res> {
  __$WritingListStateCopyWithImpl(
      _WritingListState _value, $Res Function(_WritingListState) _then)
      : super(_value, (v) => _then(v as _WritingListState));

  @override
  _WritingListState get _value => super._value as _WritingListState;

  @override
  $Res call({
    Object? writings = freezed,
  }) {
    return _then(_WritingListState(
      writings: writings == freezed
          ? _value.writings
          : writings // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_WritingListState implements _WritingListState {
  const _$_WritingListState({this.writings = const []});

  @JsonKey()
  @override
  final List<Post> writings;

  @override
  String toString() {
    return 'WritingListState(writings: $writings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WritingListState &&
            const DeepCollectionEquality().equals(other.writings, writings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(writings));

  @JsonKey(ignore: true)
  @override
  _$WritingListStateCopyWith<_WritingListState> get copyWith =>
      __$WritingListStateCopyWithImpl<_WritingListState>(this, _$identity);
}

abstract class _WritingListState implements WritingListState {
  const factory _WritingListState({List<Post> writings}) = _$_WritingListState;

  @override
  List<Post> get writings;
  @override
  @JsonKey(ignore: true)
  _$WritingListStateCopyWith<_WritingListState> get copyWith =>
      throw _privateConstructorUsedError;
}
