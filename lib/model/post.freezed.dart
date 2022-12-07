// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

post _$postFromJson(Map<String, dynamic> json) {
  return _post.fromJson(json);
}

/// @nodoc
class _$postTearOff {
  const _$postTearOff();

  _post call(
      {@JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'email')
          required String email,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          required DateTime createdAt,
      @JsonKey(name: 'postCount')
          required int postCount}) {
    return _post(
      name: name,
      email: email,
      createdAt: createdAt,
      postCount: postCount,
    );
  }

  post fromJson(Map<String, Object?> json) {
    return post.fromJson(json);
  }
}

/// @nodoc
const $post = _$postTearOff();

/// @nodoc
mixin _$post {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'postCount')
  int get postCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $postCopyWith<post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $postCopyWith<$Res> {
  factory $postCopyWith(post value, $Res Function(post) then) =
      _$postCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'createdAt') @DateTimeConverter() DateTime createdAt,
      @JsonKey(name: 'postCount') int postCount});
}

/// @nodoc
class _$postCopyWithImpl<$Res> implements $postCopyWith<$Res> {
  _$postCopyWithImpl(this._value, this._then);

  final post _value;
  // ignore: unused_field
  final $Res Function(post) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? postCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$postCopyWith<$Res> implements $postCopyWith<$Res> {
  factory _$postCopyWith(_post value, $Res Function(_post) then) =
      __$postCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'createdAt') @DateTimeConverter() DateTime createdAt,
      @JsonKey(name: 'postCount') int postCount});
}

/// @nodoc
class __$postCopyWithImpl<$Res> extends _$postCopyWithImpl<$Res>
    implements _$postCopyWith<$Res> {
  __$postCopyWithImpl(_post _value, $Res Function(_post) _then)
      : super(_value, (v) => _then(v as _post));

  @override
  _post get _value => super._value as _post;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? postCount = freezed,
  }) {
    return _then(_post(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_post extends _post {
  const _$_post(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'createdAt') @DateTimeConverter() required this.createdAt,
      @JsonKey(name: 'postCount') required this.postCount})
      : super._();

  factory _$_post.fromJson(Map<String, dynamic> json) => _$$_postFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'createdAt')
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @JsonKey(name: 'postCount')
  final int postCount;

  @override
  String toString() {
    return 'post(name: $name, email: $email, createdAt: $createdAt, postCount: $postCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _post &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.postCount, postCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(postCount));

  @JsonKey(ignore: true)
  @override
  _$postCopyWith<_post> get copyWith =>
      __$postCopyWithImpl<_post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_postToJson(this);
  }
}

abstract class _post extends post {
  const factory _post(
      {@JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'email')
          required String email,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          required DateTime createdAt,
      @JsonKey(name: 'postCount')
          required int postCount}) = _$_post;
  const _post._() : super._();

  factory _post.fromJson(Map<String, dynamic> json) = _$_post.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'createdAt')
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(name: 'postCount')
  int get postCount;
  @override
  @JsonKey(ignore: true)
  _$postCopyWith<_post> get copyWith => throw _privateConstructorUsedError;
}
