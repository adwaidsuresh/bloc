// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Apidata {
  ApiDetailsState get status => throw _privateConstructorUsedError;
  Maxvalue? get data => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApidataCopyWith<Apidata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApidataCopyWith<$Res> {
  factory $ApidataCopyWith(Apidata value, $Res Function(Apidata) then) =
      _$ApidataCopyWithImpl<$Res, Apidata>;
  @useResult
  $Res call({ApiDetailsState status, Maxvalue? data, String error});
}

/// @nodoc
class _$ApidataCopyWithImpl<$Res, $Val extends Apidata>
    implements $ApidataCopyWith<$Res> {
  _$ApidataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiDetailsState,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Maxvalue?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApidataImplCopyWith<$Res> implements $ApidataCopyWith<$Res> {
  factory _$$ApidataImplCopyWith(
          _$ApidataImpl value, $Res Function(_$ApidataImpl) then) =
      __$$ApidataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiDetailsState status, Maxvalue? data, String error});
}

/// @nodoc
class __$$ApidataImplCopyWithImpl<$Res>
    extends _$ApidataCopyWithImpl<$Res, _$ApidataImpl>
    implements _$$ApidataImplCopyWith<$Res> {
  __$$ApidataImplCopyWithImpl(
      _$ApidataImpl _value, $Res Function(_$ApidataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$ApidataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiDetailsState,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Maxvalue?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApidataImpl implements _Apidata {
  _$ApidataImpl(
      {this.status = ApiDetailsState.initial, this.data = null, this.error = ''});

  @override
  @JsonKey()
  final ApiDetailsState status;
  @override
  @JsonKey()
  final Maxvalue? data;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'Apidata(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApidataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApidataImplCopyWith<_$ApidataImpl> get copyWith =>
      __$$ApidataImplCopyWithImpl<_$ApidataImpl>(this, _$identity);
}

abstract class _Apidata implements Apidata {
  factory _Apidata(
      {final ApiDetailsState status,
      final Maxvalue? data,
      final String error}) = _$ApidataImpl;

  @override
  ApiDetailsState get status;
  @override
  Maxvalue? get data;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ApidataImplCopyWith<_$ApidataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
