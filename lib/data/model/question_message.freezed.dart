// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionMessage _$QuestionMessageFromJson(Map<String, dynamic> json) {
  return _QuestionMessage.fromJson(json);
}

/// @nodoc
class _$QuestionMessageTearOff {
  const _$QuestionMessageTearOff();

  _QuestionMessage call(
      {@JsonKey(name: 'userId')
          required String userId,
      @JsonKey(name: 'content')
          required String content,
      @JsonKey(name: 'question_messages')
          required List<QuestionMessage> question_messages,
      @JsonKey(name: 'question_messageedAt')
      @DateTimeConverter()
          required DateTime question_messageedAt}) {
    return _QuestionMessage(
      userId: userId,
      content: content,
      question_messages: question_messages,
      question_messageedAt: question_messageedAt,
    );
  }

  QuestionMessage fromJson(Map<String, Object?> json) {
    return QuestionMessage.fromJson(json);
  }
}

/// @nodoc
const $QuestionMessage = _$QuestionMessageTearOff();

/// @nodoc
mixin _$QuestionMessage {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_messages')
  List<QuestionMessage> get question_messages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'question_messageedAt')
  @DateTimeConverter()
  DateTime get question_messageedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionMessageCopyWith<QuestionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionMessageCopyWith<$Res> {
  factory $QuestionMessageCopyWith(
          QuestionMessage value, $Res Function(QuestionMessage) then) =
      _$QuestionMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userId')
          String userId,
      @JsonKey(name: 'content')
          String content,
      @JsonKey(name: 'question_messages')
          List<QuestionMessage> question_messages,
      @JsonKey(name: 'question_messageedAt')
      @DateTimeConverter()
          DateTime question_messageedAt});
}

/// @nodoc
class _$QuestionMessageCopyWithImpl<$Res>
    implements $QuestionMessageCopyWith<$Res> {
  _$QuestionMessageCopyWithImpl(this._value, this._then);

  final QuestionMessage _value;
  // ignore: unused_field
  final $Res Function(QuestionMessage) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? content = freezed,
    Object? question_messages = freezed,
    Object? question_messageedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      question_messages: question_messages == freezed
          ? _value.question_messages
          : question_messages // ignore: cast_nullable_to_non_nullable
              as List<QuestionMessage>,
      question_messageedAt: question_messageedAt == freezed
          ? _value.question_messageedAt
          : question_messageedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$QuestionMessageCopyWith<$Res>
    implements $QuestionMessageCopyWith<$Res> {
  factory _$QuestionMessageCopyWith(
          _QuestionMessage value, $Res Function(_QuestionMessage) then) =
      __$QuestionMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userId')
          String userId,
      @JsonKey(name: 'content')
          String content,
      @JsonKey(name: 'question_messages')
          List<QuestionMessage> question_messages,
      @JsonKey(name: 'question_messageedAt')
      @DateTimeConverter()
          DateTime question_messageedAt});
}

/// @nodoc
class __$QuestionMessageCopyWithImpl<$Res>
    extends _$QuestionMessageCopyWithImpl<$Res>
    implements _$QuestionMessageCopyWith<$Res> {
  __$QuestionMessageCopyWithImpl(
      _QuestionMessage _value, $Res Function(_QuestionMessage) _then)
      : super(_value, (v) => _then(v as _QuestionMessage));

  @override
  _QuestionMessage get _value => super._value as _QuestionMessage;

  @override
  $Res call({
    Object? userId = freezed,
    Object? content = freezed,
    Object? question_messages = freezed,
    Object? question_messageedAt = freezed,
  }) {
    return _then(_QuestionMessage(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      question_messages: question_messages == freezed
          ? _value.question_messages
          : question_messages // ignore: cast_nullable_to_non_nullable
              as List<QuestionMessage>,
      question_messageedAt: question_messageedAt == freezed
          ? _value.question_messageedAt
          : question_messageedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionMessage extends _QuestionMessage {
  const _$_QuestionMessage(
      {@JsonKey(name: 'userId')
          required this.userId,
      @JsonKey(name: 'content')
          required this.content,
      @JsonKey(name: 'question_messages')
          required this.question_messages,
      @JsonKey(name: 'question_messageedAt')
      @DateTimeConverter()
          required this.question_messageedAt})
      : super._();

  factory _$_QuestionMessage.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionMessageFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'question_messages')
  final List<QuestionMessage> question_messages;
  @override
  @JsonKey(name: 'question_messageedAt')
  @DateTimeConverter()
  final DateTime question_messageedAt;

  @override
  String toString() {
    return 'QuestionMessage(userId: $userId, content: $content, question_messages: $question_messages, question_messageedAt: $question_messageedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionMessage &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.question_messages, question_messages) &&
            const DeepCollectionEquality()
                .equals(other.question_messageedAt, question_messageedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(question_messages),
      const DeepCollectionEquality().hash(question_messageedAt));

  @JsonKey(ignore: true)
  @override
  _$QuestionMessageCopyWith<_QuestionMessage> get copyWith =>
      __$QuestionMessageCopyWithImpl<_QuestionMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionMessageToJson(this);
  }
}

abstract class _QuestionMessage extends QuestionMessage {
  const factory _QuestionMessage(
      {@JsonKey(name: 'userId')
          required String userId,
      @JsonKey(name: 'content')
          required String content,
      @JsonKey(name: 'question_messages')
          required List<QuestionMessage> question_messages,
      @JsonKey(name: 'question_messageedAt')
      @DateTimeConverter()
          required DateTime question_messageedAt}) = _$_QuestionMessage;
  const _QuestionMessage._() : super._();

  factory _QuestionMessage.fromJson(Map<String, dynamic> json) =
      _$_QuestionMessage.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'question_messages')
  List<QuestionMessage> get question_messages;
  @override
  @JsonKey(name: 'question_messageedAt')
  @DateTimeConverter()
  DateTime get question_messageedAt;
  @override
  @JsonKey(ignore: true)
  _$QuestionMessageCopyWith<_QuestionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
