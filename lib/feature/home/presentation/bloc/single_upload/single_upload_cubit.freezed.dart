// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_upload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleUploadState {
  UploadTask get task => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleUploadStateCopyWith<SingleUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleUploadStateCopyWith<$Res> {
  factory $SingleUploadStateCopyWith(
          SingleUploadState value, $Res Function(SingleUploadState) then) =
      _$SingleUploadStateCopyWithImpl<$Res, SingleUploadState>;
  @useResult
  $Res call({UploadTask task, double progress, String? errorMessage});

  $UploadTaskCopyWith<$Res> get task;
}

/// @nodoc
class _$SingleUploadStateCopyWithImpl<$Res, $Val extends SingleUploadState>
    implements $SingleUploadStateCopyWith<$Res> {
  _$SingleUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? progress = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as UploadTask,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadTaskCopyWith<$Res> get task {
    return $UploadTaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingleUploadStateImplCopyWith<$Res>
    implements $SingleUploadStateCopyWith<$Res> {
  factory _$$SingleUploadStateImplCopyWith(_$SingleUploadStateImpl value,
          $Res Function(_$SingleUploadStateImpl) then) =
      __$$SingleUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UploadTask task, double progress, String? errorMessage});

  @override
  $UploadTaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$SingleUploadStateImplCopyWithImpl<$Res>
    extends _$SingleUploadStateCopyWithImpl<$Res, _$SingleUploadStateImpl>
    implements _$$SingleUploadStateImplCopyWith<$Res> {
  __$$SingleUploadStateImplCopyWithImpl(_$SingleUploadStateImpl _value,
      $Res Function(_$SingleUploadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? progress = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SingleUploadStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as UploadTask,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SingleUploadStateImpl implements _SingleUploadState {
  const _$SingleUploadStateImpl(
      {required this.task, this.progress = 0, this.errorMessage});

  @override
  final UploadTask task;
  @override
  @JsonKey()
  final double progress;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SingleUploadState(task: $task, progress: $progress, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleUploadStateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, progress, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleUploadStateImplCopyWith<_$SingleUploadStateImpl> get copyWith =>
      __$$SingleUploadStateImplCopyWithImpl<_$SingleUploadStateImpl>(
          this, _$identity);
}

abstract class _SingleUploadState implements SingleUploadState {
  const factory _SingleUploadState(
      {required final UploadTask task,
      final double progress,
      final String? errorMessage}) = _$SingleUploadStateImpl;

  @override
  UploadTask get task;
  @override
  double get progress;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SingleUploadStateImplCopyWith<_$SingleUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
