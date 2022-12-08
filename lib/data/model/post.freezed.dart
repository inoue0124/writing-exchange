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

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {@JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'content')
          required String content,
      @JsonKey(name: 'audioUrl')
          required String audioUrl,
      @JsonKey(name: 'imageUrls')
          required List<String> imageUrls,
      @JsonKey(name: 'status')
      @PostStatusConverter()
          required PostStatus status,
      @JsonKey(name: 'userId')
          required String userId,
      @JsonKey(name: 'correctionCount')
          int correctionCount = 0,
      @JsonKey(name: 'postedAt')
      @DateTimeConverter()
          DateTime? postedAt,
      @JsonKey(ignore: true)
          User? user}) {
    return _Post(
      title: title,
      content: content,
      audioUrl: audioUrl,
      imageUrls: imageUrls,
      status: status,
      userId: userId,
      correctionCount: correctionCount,
      postedAt: postedAt,
      user: user,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'audioUrl')
  String get audioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  @PostStatusConverter()
  PostStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'correctionCount')
  int get correctionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'postedAt')
  @DateTimeConverter()
  DateTime? get postedAt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'audioUrl') String audioUrl,
      @JsonKey(name: 'imageUrls') List<String> imageUrls,
      @JsonKey(name: 'status') @PostStatusConverter() PostStatus status,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'correctionCount') int correctionCount,
      @JsonKey(name: 'postedAt') @DateTimeConverter() DateTime? postedAt,
      @JsonKey(ignore: true) User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? audioUrl = freezed,
    Object? imageUrls = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? correctionCount = freezed,
    Object? postedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      correctionCount: correctionCount == freezed
          ? _value.correctionCount
          : correctionCount // ignore: cast_nullable_to_non_nullable
              as int,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'audioUrl') String audioUrl,
      @JsonKey(name: 'imageUrls') List<String> imageUrls,
      @JsonKey(name: 'status') @PostStatusConverter() PostStatus status,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'correctionCount') int correctionCount,
      @JsonKey(name: 'postedAt') @DateTimeConverter() DateTime? postedAt,
      @JsonKey(ignore: true) User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? audioUrl = freezed,
    Object? imageUrls = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? correctionCount = freezed,
    Object? postedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_Post(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      correctionCount: correctionCount == freezed
          ? _value.correctionCount
          : correctionCount // ignore: cast_nullable_to_non_nullable
              as int,
      postedAt: postedAt == freezed
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  const _$_Post(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'audioUrl') required this.audioUrl,
      @JsonKey(name: 'imageUrls') required this.imageUrls,
      @JsonKey(name: 'status') @PostStatusConverter() required this.status,
      @JsonKey(name: 'userId') required this.userId,
      @JsonKey(name: 'correctionCount') this.correctionCount = 0,
      @JsonKey(name: 'postedAt') @DateTimeConverter() this.postedAt,
      @JsonKey(ignore: true) this.user})
      : super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'audioUrl')
  final String audioUrl;
  @override
  @JsonKey(name: 'imageUrls')
  final List<String> imageUrls;
  @override
  @JsonKey(name: 'status')
  @PostStatusConverter()
  final PostStatus status;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'correctionCount')
  final int correctionCount;
  @override
  @JsonKey(name: 'postedAt')
  @DateTimeConverter()
  final DateTime? postedAt;
  @override
  @JsonKey(ignore: true)
  final User? user;

  @override
  String toString() {
    return 'Post(title: $title, content: $content, audioUrl: $audioUrl, imageUrls: $imageUrls, status: $status, userId: $userId, correctionCount: $correctionCount, postedAt: $postedAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.audioUrl, audioUrl) &&
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.correctionCount, correctionCount) &&
            const DeepCollectionEquality().equals(other.postedAt, postedAt) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(audioUrl),
      const DeepCollectionEquality().hash(imageUrls),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(correctionCount),
      const DeepCollectionEquality().hash(postedAt),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {@JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'content')
          required String content,
      @JsonKey(name: 'audioUrl')
          required String audioUrl,
      @JsonKey(name: 'imageUrls')
          required List<String> imageUrls,
      @JsonKey(name: 'status')
      @PostStatusConverter()
          required PostStatus status,
      @JsonKey(name: 'userId')
          required String userId,
      @JsonKey(name: 'correctionCount')
          int correctionCount,
      @JsonKey(name: 'postedAt')
      @DateTimeConverter()
          DateTime? postedAt,
      @JsonKey(ignore: true)
          User? user}) = _$_Post;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'audioUrl')
  String get audioUrl;
  @override
  @JsonKey(name: 'imageUrls')
  List<String> get imageUrls;
  @override
  @JsonKey(name: 'status')
  @PostStatusConverter()
  PostStatus get status;
  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'correctionCount')
  int get correctionCount;
  @override
  @JsonKey(name: 'postedAt')
  @DateTimeConverter()
  DateTime? get postedAt;
  @override
  @JsonKey(ignore: true)
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}
