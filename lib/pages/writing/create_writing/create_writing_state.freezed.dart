// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_writing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateWritingStateTearOff {
  const _$CreateWritingStateTearOff();

  _CreateWritingState call(
      {String title = "",
      String content = "",
      List<String> imageUrls = const [],
      String audioUrl = "",
      PostStatus status = PostStatus.active,
      bool isPostSuccess = false,
      bool isSaveDraftSuccess = false}) {
    return _CreateWritingState(
      title: title,
      content: content,
      imageUrls: imageUrls,
      audioUrl: audioUrl,
      status: status,
      isPostSuccess: isPostSuccess,
      isSaveDraftSuccess: isSaveDraftSuccess,
    );
  }
}

/// @nodoc
const $CreateWritingState = _$CreateWritingStateTearOff();

/// @nodoc
mixin _$CreateWritingState {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  PostStatus get status => throw _privateConstructorUsedError;
  bool get isPostSuccess => throw _privateConstructorUsedError;
  bool get isSaveDraftSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateWritingStateCopyWith<CreateWritingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWritingStateCopyWith<$Res> {
  factory $CreateWritingStateCopyWith(
          CreateWritingState value, $Res Function(CreateWritingState) then) =
      _$CreateWritingStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String content,
      List<String> imageUrls,
      String audioUrl,
      PostStatus status,
      bool isPostSuccess,
      bool isSaveDraftSuccess});
}

/// @nodoc
class _$CreateWritingStateCopyWithImpl<$Res>
    implements $CreateWritingStateCopyWith<$Res> {
  _$CreateWritingStateCopyWithImpl(this._value, this._then);

  final CreateWritingState _value;
  // ignore: unused_field
  final $Res Function(CreateWritingState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? imageUrls = freezed,
    Object? audioUrl = freezed,
    Object? status = freezed,
    Object? isPostSuccess = freezed,
    Object? isSaveDraftSuccess = freezed,
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
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      audioUrl: audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      isPostSuccess: isPostSuccess == freezed
          ? _value.isPostSuccess
          : isPostSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaveDraftSuccess: isSaveDraftSuccess == freezed
          ? _value.isSaveDraftSuccess
          : isSaveDraftSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CreateWritingStateCopyWith<$Res>
    implements $CreateWritingStateCopyWith<$Res> {
  factory _$CreateWritingStateCopyWith(
          _CreateWritingState value, $Res Function(_CreateWritingState) then) =
      __$CreateWritingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String content,
      List<String> imageUrls,
      String audioUrl,
      PostStatus status,
      bool isPostSuccess,
      bool isSaveDraftSuccess});
}

/// @nodoc
class __$CreateWritingStateCopyWithImpl<$Res>
    extends _$CreateWritingStateCopyWithImpl<$Res>
    implements _$CreateWritingStateCopyWith<$Res> {
  __$CreateWritingStateCopyWithImpl(
      _CreateWritingState _value, $Res Function(_CreateWritingState) _then)
      : super(_value, (v) => _then(v as _CreateWritingState));

  @override
  _CreateWritingState get _value => super._value as _CreateWritingState;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? imageUrls = freezed,
    Object? audioUrl = freezed,
    Object? status = freezed,
    Object? isPostSuccess = freezed,
    Object? isSaveDraftSuccess = freezed,
  }) {
    return _then(_CreateWritingState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      audioUrl: audioUrl == freezed
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      isPostSuccess: isPostSuccess == freezed
          ? _value.isPostSuccess
          : isPostSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaveDraftSuccess: isSaveDraftSuccess == freezed
          ? _value.isSaveDraftSuccess
          : isSaveDraftSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateWritingState implements _CreateWritingState {
  const _$_CreateWritingState(
      {this.title = "",
      this.content = "",
      this.imageUrls = const [],
      this.audioUrl = "",
      this.status = PostStatus.active,
      this.isPostSuccess = false,
      this.isSaveDraftSuccess = false});

  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final String content;
  @JsonKey()
  @override
  final List<String> imageUrls;
  @JsonKey()
  @override
  final String audioUrl;
  @JsonKey()
  @override
  final PostStatus status;
  @JsonKey()
  @override
  final bool isPostSuccess;
  @JsonKey()
  @override
  final bool isSaveDraftSuccess;

  @override
  String toString() {
    return 'CreateWritingState(title: $title, content: $content, imageUrls: $imageUrls, audioUrl: $audioUrl, status: $status, isPostSuccess: $isPostSuccess, isSaveDraftSuccess: $isSaveDraftSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateWritingState &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.imageUrls, imageUrls) &&
            const DeepCollectionEquality().equals(other.audioUrl, audioUrl) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isPostSuccess, isPostSuccess) &&
            const DeepCollectionEquality()
                .equals(other.isSaveDraftSuccess, isSaveDraftSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(imageUrls),
      const DeepCollectionEquality().hash(audioUrl),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isPostSuccess),
      const DeepCollectionEquality().hash(isSaveDraftSuccess));

  @JsonKey(ignore: true)
  @override
  _$CreateWritingStateCopyWith<_CreateWritingState> get copyWith =>
      __$CreateWritingStateCopyWithImpl<_CreateWritingState>(this, _$identity);
}

abstract class _CreateWritingState implements CreateWritingState {
  const factory _CreateWritingState(
      {String title,
      String content,
      List<String> imageUrls,
      String audioUrl,
      PostStatus status,
      bool isPostSuccess,
      bool isSaveDraftSuccess}) = _$_CreateWritingState;

  @override
  String get title;
  @override
  String get content;
  @override
  List<String> get imageUrls;
  @override
  String get audioUrl;
  @override
  PostStatus get status;
  @override
  bool get isPostSuccess;
  @override
  bool get isSaveDraftSuccess;
  @override
  @JsonKey(ignore: true)
  _$CreateWritingStateCopyWith<_CreateWritingState> get copyWith =>
      throw _privateConstructorUsedError;
}
