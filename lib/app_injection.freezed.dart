// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_injection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInjections {
  SharedPreferences get sharedPrefs => throw _privateConstructorUsedError;
  Dio get dio => throw _privateConstructorUsedError;
  HiveDataStore get dataStore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInjectionsCopyWith<AppInjections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInjectionsCopyWith<$Res> {
  factory $AppInjectionsCopyWith(
          AppInjections value, $Res Function(AppInjections) then) =
      _$AppInjectionsCopyWithImpl<$Res, AppInjections>;
  @useResult
  $Res call({SharedPreferences sharedPrefs, Dio dio, HiveDataStore dataStore});
}

/// @nodoc
class _$AppInjectionsCopyWithImpl<$Res, $Val extends AppInjections>
    implements $AppInjectionsCopyWith<$Res> {
  _$AppInjectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedPrefs = null,
    Object? dio = null,
    Object? dataStore = null,
  }) {
    return _then(_value.copyWith(
      sharedPrefs: null == sharedPrefs
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
      dio: null == dio
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
      dataStore: null == dataStore
          ? _value.dataStore
          : dataStore // ignore: cast_nullable_to_non_nullable
              as HiveDataStore,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppInjectionsImplCopyWith<$Res>
    implements $AppInjectionsCopyWith<$Res> {
  factory _$$AppInjectionsImplCopyWith(
          _$AppInjectionsImpl value, $Res Function(_$AppInjectionsImpl) then) =
      __$$AppInjectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SharedPreferences sharedPrefs, Dio dio, HiveDataStore dataStore});
}

/// @nodoc
class __$$AppInjectionsImplCopyWithImpl<$Res>
    extends _$AppInjectionsCopyWithImpl<$Res, _$AppInjectionsImpl>
    implements _$$AppInjectionsImplCopyWith<$Res> {
  __$$AppInjectionsImplCopyWithImpl(
      _$AppInjectionsImpl _value, $Res Function(_$AppInjectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sharedPrefs = null,
    Object? dio = null,
    Object? dataStore = null,
  }) {
    return _then(_$AppInjectionsImpl(
      sharedPrefs: null == sharedPrefs
          ? _value.sharedPrefs
          : sharedPrefs // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
      dio: null == dio
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
      dataStore: null == dataStore
          ? _value.dataStore
          : dataStore // ignore: cast_nullable_to_non_nullable
              as HiveDataStore,
    ));
  }
}

/// @nodoc

class _$AppInjectionsImpl implements _AppInjections {
  const _$AppInjectionsImpl(
      {required this.sharedPrefs, required this.dio, required this.dataStore});

  @override
  final SharedPreferences sharedPrefs;
  @override
  final Dio dio;
  @override
  final HiveDataStore dataStore;

  @override
  String toString() {
    return 'AppInjections(sharedPrefs: $sharedPrefs, dio: $dio, dataStore: $dataStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInjectionsImpl &&
            (identical(other.sharedPrefs, sharedPrefs) ||
                other.sharedPrefs == sharedPrefs) &&
            (identical(other.dio, dio) || other.dio == dio) &&
            (identical(other.dataStore, dataStore) ||
                other.dataStore == dataStore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sharedPrefs, dio, dataStore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInjectionsImplCopyWith<_$AppInjectionsImpl> get copyWith =>
      __$$AppInjectionsImplCopyWithImpl<_$AppInjectionsImpl>(this, _$identity);
}

abstract class _AppInjections implements AppInjections {
  const factory _AppInjections(
      {required final SharedPreferences sharedPrefs,
      required final Dio dio,
      required final HiveDataStore dataStore}) = _$AppInjectionsImpl;

  @override
  SharedPreferences get sharedPrefs;
  @override
  Dio get dio;
  @override
  HiveDataStore get dataStore;
  @override
  @JsonKey(ignore: true)
  _$$AppInjectionsImplCopyWith<_$AppInjectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
