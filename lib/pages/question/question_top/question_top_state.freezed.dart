// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_top_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionTopStateTearOff {
  const _$QuestionTopStateTearOff();

  _QuestionTopState call(
      {User user = const User(),
      Language? selectedLanguage = null,
      Post? needCorrectionPost = null,
      int correctionTicketCount = 0}) {
    return _QuestionTopState(
      user: user,
      selectedLanguage: selectedLanguage,
      needCorrectionPost: needCorrectionPost,
      correctionTicketCount: correctionTicketCount,
    );
  }
}

/// @nodoc
const $QuestionTopState = _$QuestionTopStateTearOff();

/// @nodoc
mixin _$QuestionTopState {
  User get user => throw _privateConstructorUsedError;
  Language? get selectedLanguage => throw _privateConstructorUsedError;
  Post? get needCorrectionPost => throw _privateConstructorUsedError;
  int get correctionTicketCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionTopStateCopyWith<QuestionTopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTopStateCopyWith<$Res> {
  factory $QuestionTopStateCopyWith(
          QuestionTopState value, $Res Function(QuestionTopState) then) =
      _$QuestionTopStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      Language? selectedLanguage,
      Post? needCorrectionPost,
      int correctionTicketCount});

  $UserCopyWith<$Res> get user;
  $PostCopyWith<$Res>? get needCorrectionPost;
}

/// @nodoc
class _$QuestionTopStateCopyWithImpl<$Res>
    implements $QuestionTopStateCopyWith<$Res> {
  _$QuestionTopStateCopyWithImpl(this._value, this._then);

  final QuestionTopState _value;
  // ignore: unused_field
  final $Res Function(QuestionTopState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? selectedLanguage = freezed,
    Object? needCorrectionPost = freezed,
    Object? correctionTicketCount = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      selectedLanguage: selectedLanguage == freezed
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
      needCorrectionPost: needCorrectionPost == freezed
          ? _value.needCorrectionPost
          : needCorrectionPost // ignore: cast_nullable_to_non_nullable
              as Post?,
      correctionTicketCount: correctionTicketCount == freezed
          ? _value.correctionTicketCount
          : correctionTicketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $PostCopyWith<$Res>? get needCorrectionPost {
    if (_value.needCorrectionPost == null) {
      return null;
    }

    return $PostCopyWith<$Res>(_value.needCorrectionPost!, (value) {
      return _then(_value.copyWith(needCorrectionPost: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionTopStateCopyWith<$Res>
    implements $QuestionTopStateCopyWith<$Res> {
  factory _$QuestionTopStateCopyWith(
          _QuestionTopState value, $Res Function(_QuestionTopState) then) =
      __$QuestionTopStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      Language? selectedLanguage,
      Post? needCorrectionPost,
      int correctionTicketCount});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PostCopyWith<$Res>? get needCorrectionPost;
}

/// @nodoc
class __$QuestionTopStateCopyWithImpl<$Res>
    extends _$QuestionTopStateCopyWithImpl<$Res>
    implements _$QuestionTopStateCopyWith<$Res> {
  __$QuestionTopStateCopyWithImpl(
      _QuestionTopState _value, $Res Function(_QuestionTopState) _then)
      : super(_value, (v) => _then(v as _QuestionTopState));

  @override
  _QuestionTopState get _value => super._value as _QuestionTopState;

  @override
  $Res call({
    Object? user = freezed,
    Object? selectedLanguage = freezed,
    Object? needCorrectionPost = freezed,
    Object? correctionTicketCount = freezed,
  }) {
    return _then(_QuestionTopState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      selectedLanguage: selectedLanguage == freezed
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language?,
      needCorrectionPost: needCorrectionPost == freezed
          ? _value.needCorrectionPost
          : needCorrectionPost // ignore: cast_nullable_to_non_nullable
              as Post?,
      correctionTicketCount: correctionTicketCount == freezed
          ? _value.correctionTicketCount
          : correctionTicketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_QuestionTopState implements _QuestionTopState {
  const _$_QuestionTopState(
      {this.user = const User(),
      this.selectedLanguage = null,
      this.needCorrectionPost = null,
      this.correctionTicketCount = 0});

  @JsonKey()
  @override
  final User user;
  @JsonKey()
  @override
  final Language? selectedLanguage;
  @JsonKey()
  @override
  final Post? needCorrectionPost;
  @JsonKey()
  @override
  final int correctionTicketCount;

  @override
  String toString() {
    return 'QuestionTopState(user: $user, selectedLanguage: $selectedLanguage, needCorrectionPost: $needCorrectionPost, correctionTicketCount: $correctionTicketCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionTopState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.selectedLanguage, selectedLanguage) &&
            const DeepCollectionEquality()
                .equals(other.needCorrectionPost, needCorrectionPost) &&
            const DeepCollectionEquality()
                .equals(other.correctionTicketCount, correctionTicketCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(selectedLanguage),
      const DeepCollectionEquality().hash(needCorrectionPost),
      const DeepCollectionEquality().hash(correctionTicketCount));

  @JsonKey(ignore: true)
  @override
  _$QuestionTopStateCopyWith<_QuestionTopState> get copyWith =>
      __$QuestionTopStateCopyWithImpl<_QuestionTopState>(this, _$identity);
}

abstract class _QuestionTopState implements QuestionTopState {
  const factory _QuestionTopState(
      {User user,
      Language? selectedLanguage,
      Post? needCorrectionPost,
      int correctionTicketCount}) = _$_QuestionTopState;

  @override
  User get user;
  @override
  Language? get selectedLanguage;
  @override
  Post? get needCorrectionPost;
  @override
  int get correctionTicketCount;
  @override
  @JsonKey(ignore: true)
  _$QuestionTopStateCopyWith<_QuestionTopState> get copyWith =>
      throw _privateConstructorUsedError;
}
