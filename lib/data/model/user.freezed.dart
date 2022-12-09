// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@JsonKey(name: 'userId')
      @HiveField(0)
          String? userId,
      @JsonKey(name: 'name')
      @HiveField(1)
          required String name,
      @JsonKey(name: 'iconUrl')
      @HiveField(2)
          required String iconUrl,
      @JsonKey(name: 'nationality')
      @HiveField(3)
      @CountryCodeConverter()
          required CountryCode nationality,
      @JsonKey(name: 'nativeLanguages')
      @HiveField(4)
      @LanguageListConverter()
          required List<Language> nativeLanguages,
      @JsonKey(name: 'targetLanguages')
      @HiveField(5)
      @LanguageListConverter()
          required List<Language> targetLanguages,
      @JsonKey(name: 'reviewValue')
          double reviewValue = 0,
      @JsonKey(name: 'correctionCount')
          int correctionCount = 0,
      @JsonKey(name: 'postCount')
          int postCount = 0,
      @JsonKey(name: 'status')
      @UserStatusConverter()
          UserStatus status = UserStatus.active,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          DateTime? createdAt}) {
    return _User(
      userId: userId,
      name: name,
      iconUrl: iconUrl,
      nationality: nationality,
      nativeLanguages: nativeLanguages,
      targetLanguages: targetLanguages,
      reviewValue: reviewValue,
      correctionCount: correctionCount,
      postCount: postCount,
      status: status,
      createdAt: createdAt,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @JsonKey(name: 'userId')
  @HiveField(0)
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'iconUrl')
  @HiveField(2)
  String get iconUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'nationality')
  @HiveField(3)
  @CountryCodeConverter()
  CountryCode get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'nativeLanguages')
  @HiveField(4)
  @LanguageListConverter()
  List<Language> get nativeLanguages => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetLanguages')
  @HiveField(5)
  @LanguageListConverter()
  List<Language> get targetLanguages => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewValue')
  double get reviewValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctionCount')
  int get correctionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'postCount')
  int get postCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  @UserStatusConverter()
  UserStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  @DateTimeConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'userId')
      @HiveField(0)
          String? userId,
      @JsonKey(name: 'name')
      @HiveField(1)
          String name,
      @JsonKey(name: 'iconUrl')
      @HiveField(2)
          String iconUrl,
      @JsonKey(name: 'nationality')
      @HiveField(3)
      @CountryCodeConverter()
          CountryCode nationality,
      @JsonKey(name: 'nativeLanguages')
      @HiveField(4)
      @LanguageListConverter()
          List<Language> nativeLanguages,
      @JsonKey(name: 'targetLanguages')
      @HiveField(5)
      @LanguageListConverter()
          List<Language> targetLanguages,
      @JsonKey(name: 'reviewValue')
          double reviewValue,
      @JsonKey(name: 'correctionCount')
          int correctionCount,
      @JsonKey(name: 'postCount')
          int postCount,
      @JsonKey(name: 'status')
      @UserStatusConverter()
          UserStatus status,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          DateTime? createdAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? iconUrl = freezed,
    Object? nationality = freezed,
    Object? nativeLanguages = freezed,
    Object? targetLanguages = freezed,
    Object? reviewValue = freezed,
    Object? correctionCount = freezed,
    Object? postCount = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      nativeLanguages: nativeLanguages == freezed
          ? _value.nativeLanguages
          : nativeLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      targetLanguages: targetLanguages == freezed
          ? _value.targetLanguages
          : targetLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      reviewValue: reviewValue == freezed
          ? _value.reviewValue
          : reviewValue // ignore: cast_nullable_to_non_nullable
              as double,
      correctionCount: correctionCount == freezed
          ? _value.correctionCount
          : correctionCount // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'userId')
      @HiveField(0)
          String? userId,
      @JsonKey(name: 'name')
      @HiveField(1)
          String name,
      @JsonKey(name: 'iconUrl')
      @HiveField(2)
          String iconUrl,
      @JsonKey(name: 'nationality')
      @HiveField(3)
      @CountryCodeConverter()
          CountryCode nationality,
      @JsonKey(name: 'nativeLanguages')
      @HiveField(4)
      @LanguageListConverter()
          List<Language> nativeLanguages,
      @JsonKey(name: 'targetLanguages')
      @HiveField(5)
      @LanguageListConverter()
          List<Language> targetLanguages,
      @JsonKey(name: 'reviewValue')
          double reviewValue,
      @JsonKey(name: 'correctionCount')
          int correctionCount,
      @JsonKey(name: 'postCount')
          int postCount,
      @JsonKey(name: 'status')
      @UserStatusConverter()
          UserStatus status,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          DateTime? createdAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? iconUrl = freezed,
    Object? nationality = freezed,
    Object? nativeLanguages = freezed,
    Object? targetLanguages = freezed,
    Object? reviewValue = freezed,
    Object? correctionCount = freezed,
    Object? postCount = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_User(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      nativeLanguages: nativeLanguages == freezed
          ? _value.nativeLanguages
          : nativeLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      targetLanguages: targetLanguages == freezed
          ? _value.targetLanguages
          : targetLanguages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
      reviewValue: reviewValue == freezed
          ? _value.reviewValue
          : reviewValue // ignore: cast_nullable_to_non_nullable
              as double,
      correctionCount: correctionCount == freezed
          ? _value.correctionCount
          : correctionCount // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {@JsonKey(name: 'userId')
      @HiveField(0)
          this.userId,
      @JsonKey(name: 'name')
      @HiveField(1)
          required this.name,
      @JsonKey(name: 'iconUrl')
      @HiveField(2)
          required this.iconUrl,
      @JsonKey(name: 'nationality')
      @HiveField(3)
      @CountryCodeConverter()
          required this.nationality,
      @JsonKey(name: 'nativeLanguages')
      @HiveField(4)
      @LanguageListConverter()
          required this.nativeLanguages,
      @JsonKey(name: 'targetLanguages')
      @HiveField(5)
      @LanguageListConverter()
          required this.targetLanguages,
      @JsonKey(name: 'reviewValue')
          this.reviewValue = 0,
      @JsonKey(name: 'correctionCount')
          this.correctionCount = 0,
      @JsonKey(name: 'postCount')
          this.postCount = 0,
      @JsonKey(name: 'status')
      @UserStatusConverter()
          this.status = UserStatus.active,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          this.createdAt})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'userId')
  @HiveField(0)
  final String? userId;
  @override
  @JsonKey(name: 'name')
  @HiveField(1)
  final String name;
  @override
  @JsonKey(name: 'iconUrl')
  @HiveField(2)
  final String iconUrl;
  @override
  @JsonKey(name: 'nationality')
  @HiveField(3)
  @CountryCodeConverter()
  final CountryCode nationality;
  @override
  @JsonKey(name: 'nativeLanguages')
  @HiveField(4)
  @LanguageListConverter()
  final List<Language> nativeLanguages;
  @override
  @JsonKey(name: 'targetLanguages')
  @HiveField(5)
  @LanguageListConverter()
  final List<Language> targetLanguages;
  @override
  @JsonKey(name: 'reviewValue')
  final double reviewValue;
  @override
  @JsonKey(name: 'correctionCount')
  final int correctionCount;
  @override
  @JsonKey(name: 'postCount')
  final int postCount;
  @override
  @JsonKey(name: 'status')
  @UserStatusConverter()
  final UserStatus status;
  @override
  @JsonKey(name: 'createdAt')
  @DateTimeConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'User(userId: $userId, name: $name, iconUrl: $iconUrl, nationality: $nationality, nativeLanguages: $nativeLanguages, targetLanguages: $targetLanguages, reviewValue: $reviewValue, correctionCount: $correctionCount, postCount: $postCount, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality()
                .equals(other.nativeLanguages, nativeLanguages) &&
            const DeepCollectionEquality()
                .equals(other.targetLanguages, targetLanguages) &&
            const DeepCollectionEquality()
                .equals(other.reviewValue, reviewValue) &&
            const DeepCollectionEquality()
                .equals(other.correctionCount, correctionCount) &&
            const DeepCollectionEquality().equals(other.postCount, postCount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(nativeLanguages),
      const DeepCollectionEquality().hash(targetLanguages),
      const DeepCollectionEquality().hash(reviewValue),
      const DeepCollectionEquality().hash(correctionCount),
      const DeepCollectionEquality().hash(postCount),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
      {@JsonKey(name: 'userId')
      @HiveField(0)
          String? userId,
      @JsonKey(name: 'name')
      @HiveField(1)
          required String name,
      @JsonKey(name: 'iconUrl')
      @HiveField(2)
          required String iconUrl,
      @JsonKey(name: 'nationality')
      @HiveField(3)
      @CountryCodeConverter()
          required CountryCode nationality,
      @JsonKey(name: 'nativeLanguages')
      @HiveField(4)
      @LanguageListConverter()
          required List<Language> nativeLanguages,
      @JsonKey(name: 'targetLanguages')
      @HiveField(5)
      @LanguageListConverter()
          required List<Language> targetLanguages,
      @JsonKey(name: 'reviewValue')
          double reviewValue,
      @JsonKey(name: 'correctionCount')
          int correctionCount,
      @JsonKey(name: 'postCount')
          int postCount,
      @JsonKey(name: 'status')
      @UserStatusConverter()
          UserStatus status,
      @JsonKey(name: 'createdAt')
      @DateTimeConverter()
          DateTime? createdAt}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'userId')
  @HiveField(0)
  String? get userId;
  @override
  @JsonKey(name: 'name')
  @HiveField(1)
  String get name;
  @override
  @JsonKey(name: 'iconUrl')
  @HiveField(2)
  String get iconUrl;
  @override
  @JsonKey(name: 'nationality')
  @HiveField(3)
  @CountryCodeConverter()
  CountryCode get nationality;
  @override
  @JsonKey(name: 'nativeLanguages')
  @HiveField(4)
  @LanguageListConverter()
  List<Language> get nativeLanguages;
  @override
  @JsonKey(name: 'targetLanguages')
  @HiveField(5)
  @LanguageListConverter()
  List<Language> get targetLanguages;
  @override
  @JsonKey(name: 'reviewValue')
  double get reviewValue;
  @override
  @JsonKey(name: 'correctionCount')
  int get correctionCount;
  @override
  @JsonKey(name: 'postCount')
  int get postCount;
  @override
  @JsonKey(name: 'status')
  @UserStatusConverter()
  UserStatus get status;
  @override
  @JsonKey(name: 'createdAt')
  @DateTimeConverter()
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
