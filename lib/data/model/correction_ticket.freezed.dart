// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'correction_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CorrectionTicket _$CorrectionTicketFromJson(Map<String, dynamic> json) {
  return _CorrectionTicket.fromJson(json);
}

/// @nodoc
class _$CorrectionTicketTearOff {
  const _$CorrectionTicketTearOff();

  _CorrectionTicket call(
      {@JsonKey(name: 'userId') required String userId,
      @JsonKey(name: 'count') int count = 0,
      @JsonKey(name: 'updatedAt') @DateTimeConverter() DateTime? updatedAt}) {
    return _CorrectionTicket(
      userId: userId,
      count: count,
      updatedAt: updatedAt,
    );
  }

  CorrectionTicket fromJson(Map<String, Object?> json) {
    return CorrectionTicket.fromJson(json);
  }
}

/// @nodoc
const $CorrectionTicket = _$CorrectionTicketTearOff();

/// @nodoc
mixin _$CorrectionTicket {
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorrectionTicketCopyWith<CorrectionTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorrectionTicketCopyWith<$Res> {
  factory $CorrectionTicketCopyWith(
          CorrectionTicket value, $Res Function(CorrectionTicket) then) =
      _$CorrectionTicketCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'updatedAt') @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$CorrectionTicketCopyWithImpl<$Res>
    implements $CorrectionTicketCopyWith<$Res> {
  _$CorrectionTicketCopyWithImpl(this._value, this._then);

  final CorrectionTicket _value;
  // ignore: unused_field
  final $Res Function(CorrectionTicket) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? count = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CorrectionTicketCopyWith<$Res>
    implements $CorrectionTicketCopyWith<$Res> {
  factory _$CorrectionTicketCopyWith(
          _CorrectionTicket value, $Res Function(_CorrectionTicket) then) =
      __$CorrectionTicketCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'updatedAt') @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$CorrectionTicketCopyWithImpl<$Res>
    extends _$CorrectionTicketCopyWithImpl<$Res>
    implements _$CorrectionTicketCopyWith<$Res> {
  __$CorrectionTicketCopyWithImpl(
      _CorrectionTicket _value, $Res Function(_CorrectionTicket) _then)
      : super(_value, (v) => _then(v as _CorrectionTicket));

  @override
  _CorrectionTicket get _value => super._value as _CorrectionTicket;

  @override
  $Res call({
    Object? userId = freezed,
    Object? count = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_CorrectionTicket(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CorrectionTicket extends _CorrectionTicket {
  const _$_CorrectionTicket(
      {@JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'count') this.count = 0,
      @JsonKey(name: 'updatedAt') @DateTimeConverter() this.updatedAt})
      : super._();

  factory _$_CorrectionTicket.fromJson(Map<String, dynamic> json) =>
      _$$_CorrectionTicketFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'updatedAt')
  @DateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CorrectionTicket(userId: $userId, count: $count, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CorrectionTicket &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$CorrectionTicketCopyWith<_CorrectionTicket> get copyWith =>
      __$CorrectionTicketCopyWithImpl<_CorrectionTicket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CorrectionTicketToJson(this);
  }
}

abstract class _CorrectionTicket extends CorrectionTicket {
  const factory _CorrectionTicket(
      {@JsonKey(name: 'userId')
          required String userId,
      @JsonKey(name: 'count')
          int count,
      @JsonKey(name: 'updatedAt')
      @DateTimeConverter()
          DateTime? updatedAt}) = _$_CorrectionTicket;
  const _CorrectionTicket._() : super._();

  factory _CorrectionTicket.fromJson(Map<String, dynamic> json) =
      _$_CorrectionTicket.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'updatedAt')
  @DateTimeConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$CorrectionTicketCopyWith<_CorrectionTicket> get copyWith =>
      throw _privateConstructorUsedError;
}
