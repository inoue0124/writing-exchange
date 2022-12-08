// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'correction_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CorrectionMessage _$CorrectionMessageFromJson(Map<String, dynamic> json) {
  return _CorrectionMessage.fromJson(json);
}

/// @nodoc
class _$CorrectionMessageTearOff {
  const _$CorrectionMessageTearOff();

  _CorrectionMessage call(
      {@JsonKey(name: 'content') required String content,
      @JsonKey(name: 'senderId') required String senderId,
      @JsonKey(name: 'sentAt') @DateTimeConverter() required DateTime sentAt}) {
    return _CorrectionMessage(
      content: content,
      senderId: senderId,
      sentAt: sentAt,
    );
  }

  CorrectionMessage fromJson(Map<String, Object?> json) {
    return CorrectionMessage.fromJson(json);
  }
}

/// @nodoc
const $CorrectionMessage = _$CorrectionMessageTearOff();

/// @nodoc
mixin _$CorrectionMessage {
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderId')
  String get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentAt')
  @DateTimeConverter()
  DateTime get sentAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrectionMessageCopyWith<CorrectionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionMessageCopyWith<$Res> {
  factory $CorrectionMessageCopyWith(
          CorrectionMessage value, $Res Function(CorrectionMessage) then) =
      _$CorrectionMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'sentAt') @DateTimeConverter() DateTime sentAt});
}

/// @nodoc
class _$CorrectionMessageCopyWithImpl<$Res>
    implements $CorrectionMessageCopyWith<$Res> {
  _$CorrectionMessageCopyWithImpl(this._value, this._then);

  final CorrectionMessage _value;
  // ignore: unused_field
  final $Res Function(CorrectionMessage) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? senderId = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CorrectionMessageCopyWith<$Res>
    implements $CorrectionMessageCopyWith<$Res> {
  factory _$CorrectionMessageCopyWith(
          _CorrectionMessage value, $Res Function(_CorrectionMessage) then) =
      __$CorrectionMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'content') String content,
      @JsonKey(name: 'senderId') String senderId,
      @JsonKey(name: 'sentAt') @DateTimeConverter() DateTime sentAt});
}

/// @nodoc
class __$CorrectionMessageCopyWithImpl<$Res>
    extends _$CorrectionMessageCopyWithImpl<$Res>
    implements _$CorrectionMessageCopyWith<$Res> {
  __$CorrectionMessageCopyWithImpl(
      _CorrectionMessage _value, $Res Function(_CorrectionMessage) _then)
      : super(_value, (v) => _then(v as _CorrectionMessage));

  @override
  _CorrectionMessage get _value => super._value as _CorrectionMessage;

  @override
  $Res call({
    Object? content = freezed,
    Object? senderId = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(_CorrectionMessage(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CorrectionMessage extends _CorrectionMessage {
  const _$_CorrectionMessage(
      {@JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'senderId') required this.senderId,
      @JsonKey(name: 'sentAt') @DateTimeConverter() required this.sentAt})
      : super._();

  factory _$_CorrectionMessage.fromJson(Map<String, dynamic> json) =>
      _$$_CorrectionMessageFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'senderId')
  final String senderId;
  @override
  @JsonKey(name: 'sentAt')
  @DateTimeConverter()
  final DateTime sentAt;

  @override
  String toString() {
    return 'CorrectionMessage(content: $content, senderId: $senderId, sentAt: $sentAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorrectionMessage &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality().equals(other.sentAt, sentAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(senderId),
      const DeepCollectionEquality().hash(sentAt));

  @JsonKey(ignore: true)
  @override
  _$CorrectionMessageCopyWith<_CorrectionMessage> get copyWith =>
      __$CorrectionMessageCopyWithImpl<_CorrectionMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrectionMessageToJson(this);
  }
}

abstract class _CorrectionMessage extends CorrectionMessage {
  const factory _CorrectionMessage(
      {@JsonKey(name: 'content')
          required String content,
      @JsonKey(name: 'senderId')
          required String senderId,
      @JsonKey(name: 'sentAt')
      @DateTimeConverter()
          required DateTime sentAt}) = _$_CorrectionMessage;
  const _CorrectionMessage._() : super._();

  factory _CorrectionMessage.fromJson(Map<String, dynamic> json) =
      _$_CorrectionMessage.fromJson;

  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'senderId')
  String get senderId;
  @override
  @JsonKey(name: 'sentAt')
  @DateTimeConverter()
  DateTime get sentAt;
  @override
  @JsonKey(ignore: true)
  _$CorrectionMessageCopyWith<_CorrectionMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
