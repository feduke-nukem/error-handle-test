// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodGetResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Food> result) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Food> result)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Food> result)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodGetSuccess value) success,
    required TResult Function(_FoodGetFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodGetSuccess value)? success,
    TResult? Function(_FoodGetFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodGetSuccess value)? success,
    TResult Function(_FoodGetFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodGetResultCopyWith<$Res> {
  factory $FoodGetResultCopyWith(
          FoodGetResult value, $Res Function(FoodGetResult) then) =
      _$FoodGetResultCopyWithImpl<$Res, FoodGetResult>;
}

/// @nodoc
class _$FoodGetResultCopyWithImpl<$Res, $Val extends FoodGetResult>
    implements $FoodGetResultCopyWith<$Res> {
  _$FoodGetResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FoodGetSuccessCopyWith<$Res> {
  factory _$$_FoodGetSuccessCopyWith(
          _$_FoodGetSuccess value, $Res Function(_$_FoodGetSuccess) then) =
      __$$_FoodGetSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Food> result});
}

/// @nodoc
class __$$_FoodGetSuccessCopyWithImpl<$Res>
    extends _$FoodGetResultCopyWithImpl<$Res, _$_FoodGetSuccess>
    implements _$$_FoodGetSuccessCopyWith<$Res> {
  __$$_FoodGetSuccessCopyWithImpl(
      _$_FoodGetSuccess _value, $Res Function(_$_FoodGetSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_FoodGetSuccess(
      null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc

class _$_FoodGetSuccess implements _FoodGetSuccess {
  const _$_FoodGetSuccess(final List<Food> result) : _result = result;

  final List<Food> _result;
  @override
  List<Food> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'FoodGetResult.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodGetSuccess &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodGetSuccessCopyWith<_$_FoodGetSuccess> get copyWith =>
      __$$_FoodGetSuccessCopyWithImpl<_$_FoodGetSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Food> result) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Food> result)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Food> result)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodGetSuccess value) success,
    required TResult Function(_FoodGetFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodGetSuccess value)? success,
    TResult? Function(_FoodGetFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodGetSuccess value)? success,
    TResult Function(_FoodGetFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FoodGetSuccess implements FoodGetResult {
  const factory _FoodGetSuccess(final List<Food> result) = _$_FoodGetSuccess;

  List<Food> get result;
  @JsonKey(ignore: true)
  _$$_FoodGetSuccessCopyWith<_$_FoodGetSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FoodGetFailureCopyWith<$Res> {
  factory _$$_FoodGetFailureCopyWith(
          _$_FoodGetFailure value, $Res Function(_$_FoodGetFailure) then) =
      __$$_FoodGetFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$_FoodGetFailureCopyWithImpl<$Res>
    extends _$FoodGetResultCopyWithImpl<$Res, _$_FoodGetFailure>
    implements _$$_FoodGetFailureCopyWith<$Res> {
  __$$_FoodGetFailureCopyWithImpl(
      _$_FoodGetFailure _value, $Res Function(_$_FoodGetFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FoodGetFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_FoodGetFailure implements _FoodGetFailure {
  const _$_FoodGetFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'FoodGetResult.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodGetFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodGetFailureCopyWith<_$_FoodGetFailure> get copyWith =>
      __$$_FoodGetFailureCopyWithImpl<_$_FoodGetFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Food> result) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Food> result)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Food> result)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodGetSuccess value) success,
    required TResult Function(_FoodGetFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodGetSuccess value)? success,
    TResult? Function(_FoodGetFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodGetSuccess value)? success,
    TResult Function(_FoodGetFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FoodGetFailure implements FoodGetResult {
  const factory _FoodGetFailure(final Failure failure) = _$_FoodGetFailure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_FoodGetFailureCopyWith<_$_FoodGetFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
