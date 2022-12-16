// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionListStateTearOff {
  const _$QuestionListStateTearOff();

  _QuestionListState call({List<Question> questions = const []}) {
    return _QuestionListState(
      questions: questions,
    );
  }
}

/// @nodoc
const $QuestionListState = _$QuestionListStateTearOff();

/// @nodoc
mixin _$QuestionListState {
  List<Question> get questions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionListStateCopyWith<QuestionListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListStateCopyWith<$Res> {
  factory $QuestionListStateCopyWith(
          QuestionListState value, $Res Function(QuestionListState) then) =
      _$QuestionListStateCopyWithImpl<$Res>;
  $Res call({List<Question> questions});
}

/// @nodoc
class _$QuestionListStateCopyWithImpl<$Res>
    implements $QuestionListStateCopyWith<$Res> {
  _$QuestionListStateCopyWithImpl(this._value, this._then);

  final QuestionListState _value;
  // ignore: unused_field
  final $Res Function(QuestionListState) _then;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionListStateCopyWith<$Res>
    implements $QuestionListStateCopyWith<$Res> {
  factory _$QuestionListStateCopyWith(
          _QuestionListState value, $Res Function(_QuestionListState) then) =
      __$QuestionListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Question> questions});
}

/// @nodoc
class __$QuestionListStateCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res>
    implements _$QuestionListStateCopyWith<$Res> {
  __$QuestionListStateCopyWithImpl(
      _QuestionListState _value, $Res Function(_QuestionListState) _then)
      : super(_value, (v) => _then(v as _QuestionListState));

  @override
  _QuestionListState get _value => super._value as _QuestionListState;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_QuestionListState(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_QuestionListState implements _QuestionListState {
  const _$_QuestionListState({this.questions = const []});

  @JsonKey()
  @override
  final List<Question> questions;

  @override
  String toString() {
    return 'QuestionListState(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionListState &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  _$QuestionListStateCopyWith<_QuestionListState> get copyWith =>
      __$QuestionListStateCopyWithImpl<_QuestionListState>(this, _$identity);
}

abstract class _QuestionListState implements QuestionListState {
  const factory _QuestionListState({List<Question> questions}) =
      _$_QuestionListState;

  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$QuestionListStateCopyWith<_QuestionListState> get copyWith =>
      throw _privateConstructorUsedError;
}
