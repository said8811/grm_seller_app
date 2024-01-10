// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) {
  return _ColorModel.fromJson(json);
}

/// @nodoc
mixin _$ColorModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorModelCopyWith<ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorModelCopyWith<$Res> {
  factory $ColorModelCopyWith(
          ColorModel value, $Res Function(ColorModel) then) =
      _$ColorModelCopyWithImpl<$Res, ColorModel>;
  @useResult
  $Res call({String id, String title, String code});
}

/// @nodoc
class _$ColorModelCopyWithImpl<$Res, $Val extends ColorModel>
    implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorModelImplCopyWith<$Res>
    implements $ColorModelCopyWith<$Res> {
  factory _$$ColorModelImplCopyWith(
          _$ColorModelImpl value, $Res Function(_$ColorModelImpl) then) =
      __$$ColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String code});
}

/// @nodoc
class __$$ColorModelImplCopyWithImpl<$Res>
    extends _$ColorModelCopyWithImpl<$Res, _$ColorModelImpl>
    implements _$$ColorModelImplCopyWith<$Res> {
  __$$ColorModelImplCopyWithImpl(
      _$ColorModelImpl _value, $Res Function(_$ColorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
  }) {
    return _then(_$ColorModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorModelImpl implements _ColorModel {
  _$ColorModelImpl({required this.id, required this.title, required this.code});

  factory _$ColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String code;

  @override
  String toString() {
    return 'ColorModel(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorModelImplCopyWith<_$ColorModelImpl> get copyWith =>
      __$$ColorModelImplCopyWithImpl<_$ColorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorModelImplToJson(
      this,
    );
  }
}

abstract class _ColorModel implements ColorModel {
  factory _ColorModel(
      {required final String id,
      required final String title,
      required final String code}) = _$ColorModelImpl;

  factory _ColorModel.fromJson(Map<String, dynamic> json) =
      _$ColorModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ColorModelImplCopyWith<_$ColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
