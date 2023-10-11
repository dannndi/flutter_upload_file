// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadTask {
  String get id => throw _privateConstructorUsedError;
  UploadType get type => throw _privateConstructorUsedError;
  UploadFile? get file => throw _privateConstructorUsedError;
  List<UploadFile>? get files => throw _privateConstructorUsedError;
  UploadStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadTaskCopyWith<UploadTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadTaskCopyWith<$Res> {
  factory $UploadTaskCopyWith(
          UploadTask value, $Res Function(UploadTask) then) =
      _$UploadTaskCopyWithImpl<$Res, UploadTask>;
  @useResult
  $Res call(
      {String id,
      UploadType type,
      UploadFile? file,
      List<UploadFile>? files,
      UploadStatus status});

  $UploadFileCopyWith<$Res>? get file;
}

/// @nodoc
class _$UploadTaskCopyWithImpl<$Res, $Val extends UploadTask>
    implements $UploadTaskCopyWith<$Res> {
  _$UploadTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? file = freezed,
    Object? files = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UploadType,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as UploadFile?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<UploadFile>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UploadStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadFileCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $UploadFileCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UploadTaskImplCopyWith<$Res>
    implements $UploadTaskCopyWith<$Res> {
  factory _$$UploadTaskImplCopyWith(
          _$UploadTaskImpl value, $Res Function(_$UploadTaskImpl) then) =
      __$$UploadTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      UploadType type,
      UploadFile? file,
      List<UploadFile>? files,
      UploadStatus status});

  @override
  $UploadFileCopyWith<$Res>? get file;
}

/// @nodoc
class __$$UploadTaskImplCopyWithImpl<$Res>
    extends _$UploadTaskCopyWithImpl<$Res, _$UploadTaskImpl>
    implements _$$UploadTaskImplCopyWith<$Res> {
  __$$UploadTaskImplCopyWithImpl(
      _$UploadTaskImpl _value, $Res Function(_$UploadTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? file = freezed,
    Object? files = freezed,
    Object? status = null,
  }) {
    return _then(_$UploadTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UploadType,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as UploadFile?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<UploadFile>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UploadStatus,
    ));
  }
}

/// @nodoc

class _$UploadTaskImpl implements _UploadTask {
  const _$UploadTaskImpl(
      {required this.id,
      required this.type,
      this.file,
      final List<UploadFile>? files,
      this.status = UploadStatus.init})
      : _files = files;

  @override
  final String id;
  @override
  final UploadType type;
  @override
  final UploadFile? file;
  final List<UploadFile>? _files;
  @override
  List<UploadFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final UploadStatus status;

  @override
  String toString() {
    return 'UploadTask(id: $id, type: $type, file: $file, files: $files, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.file, file) || other.file == file) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, file,
      const DeepCollectionEquality().hash(_files), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadTaskImplCopyWith<_$UploadTaskImpl> get copyWith =>
      __$$UploadTaskImplCopyWithImpl<_$UploadTaskImpl>(this, _$identity);
}

abstract class _UploadTask implements UploadTask {
  const factory _UploadTask(
      {required final String id,
      required final UploadType type,
      final UploadFile? file,
      final List<UploadFile>? files,
      final UploadStatus status}) = _$UploadTaskImpl;

  @override
  String get id;
  @override
  UploadType get type;
  @override
  UploadFile? get file;
  @override
  List<UploadFile>? get files;
  @override
  UploadStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$UploadTaskImplCopyWith<_$UploadTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadFile {
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileCopyWith<UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileCopyWith<$Res> {
  factory $UploadFileCopyWith(
          UploadFile value, $Res Function(UploadFile) then) =
      _$UploadFileCopyWithImpl<$Res, UploadFile>;
  @useResult
  $Res call({String path, String name, int size, String? url});
}

/// @nodoc
class _$UploadFileCopyWithImpl<$Res, $Val extends UploadFile>
    implements $UploadFileCopyWith<$Res> {
  _$UploadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? name = null,
    Object? size = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileImplCopyWith<$Res>
    implements $UploadFileCopyWith<$Res> {
  factory _$$UploadFileImplCopyWith(
          _$UploadFileImpl value, $Res Function(_$UploadFileImpl) then) =
      __$$UploadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String name, int size, String? url});
}

/// @nodoc
class __$$UploadFileImplCopyWithImpl<$Res>
    extends _$UploadFileCopyWithImpl<$Res, _$UploadFileImpl>
    implements _$$UploadFileImplCopyWith<$Res> {
  __$$UploadFileImplCopyWithImpl(
      _$UploadFileImpl _value, $Res Function(_$UploadFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? name = null,
    Object? size = null,
    Object? url = freezed,
  }) {
    return _then(_$UploadFileImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UploadFileImpl implements _UploadFile {
  const _$UploadFileImpl(
      {required this.path, required this.name, required this.size, this.url});

  @override
  final String path;
  @override
  final String name;
  @override
  final int size;
  @override
  final String? url;

  @override
  String toString() {
    return 'UploadFile(path: $path, name: $name, size: $size, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, name, size, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      __$$UploadFileImplCopyWithImpl<_$UploadFileImpl>(this, _$identity);
}

abstract class _UploadFile implements UploadFile {
  const factory _UploadFile(
      {required final String path,
      required final String name,
      required final int size,
      final String? url}) = _$UploadFileImpl;

  @override
  String get path;
  @override
  String get name;
  @override
  int get size;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
