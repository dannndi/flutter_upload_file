// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiple_upload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultipleUploadState {
  UploadTask get task => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultipleUploadStateCopyWith<MultipleUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleUploadStateCopyWith<$Res> {
  factory $MultipleUploadStateCopyWith(
          MultipleUploadState value, $Res Function(MultipleUploadState) then) =
      _$MultipleUploadStateCopyWithImpl<$Res, MultipleUploadState>;
  @useResult
  $Res call({UploadTask task, double progress, String? errorMessage});
}

/// @nodoc
class _$MultipleUploadStateCopyWithImpl<$Res, $Val extends MultipleUploadState>
    implements $MultipleUploadStateCopyWith<$Res> {
  _$MultipleUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? progress = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
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
}

/// @nodoc
abstract class _$$MultipleUploadStateImplCopyWith<$Res>
    implements $MultipleUploadStateCopyWith<$Res> {
  factory _$$MultipleUploadStateImplCopyWith(_$MultipleUploadStateImpl value,
          $Res Function(_$MultipleUploadStateImpl) then) =
      __$$MultipleUploadStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UploadTask task, double progress, String? errorMessage});
}

/// @nodoc
class __$$MultipleUploadStateImplCopyWithImpl<$Res>
    extends _$MultipleUploadStateCopyWithImpl<$Res, _$MultipleUploadStateImpl>
    implements _$$MultipleUploadStateImplCopyWith<$Res> {
  __$$MultipleUploadStateImplCopyWithImpl(_$MultipleUploadStateImpl _value,
      $Res Function(_$MultipleUploadStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
    Object? progress = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MultipleUploadStateImpl(
      task: freezed == task
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

class _$MultipleUploadStateImpl implements _MultipleUploadState {
  const _$MultipleUploadStateImpl(
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
    return 'MultipleUploadState(task: $task, progress: $progress, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleUploadStateImpl &&
            const DeepCollectionEquality().equals(other.task, task) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(task), progress, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleUploadStateImplCopyWith<_$MultipleUploadStateImpl> get copyWith =>
      __$$MultipleUploadStateImplCopyWithImpl<_$MultipleUploadStateImpl>(
          this, _$identity);
}

abstract class _MultipleUploadState implements MultipleUploadState {
  const factory _MultipleUploadState(
      {required final UploadTask task,
      final double progress,
      final String? errorMessage}) = _$MultipleUploadStateImpl;

  @override
  UploadTask get task;
  @override
  double get progress;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$MultipleUploadStateImplCopyWith<_$MultipleUploadStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
