// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collections_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionsModel _$CollectionsModelFromJson(Map<String, dynamic> json) {
  return _CollectionsModel.fromJson(json);
}

/// @nodoc
mixin _$CollectionsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionsModelCopyWith<CollectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionsModelCopyWith<$Res> {
  factory $CollectionsModelCopyWith(
          CollectionsModel value, $Res Function(CollectionsModel) then) =
      _$CollectionsModelCopyWithImpl<$Res, CollectionsModel>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$CollectionsModelCopyWithImpl<$Res, $Val extends CollectionsModel>
    implements $CollectionsModelCopyWith<$Res> {
  _$CollectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionsModelCopyWith<$Res>
    implements $CollectionsModelCopyWith<$Res> {
  factory _$$_CollectionsModelCopyWith(
          _$_CollectionsModel value, $Res Function(_$_CollectionsModel) then) =
      __$$_CollectionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$_CollectionsModelCopyWithImpl<$Res>
    extends _$CollectionsModelCopyWithImpl<$Res, _$_CollectionsModel>
    implements _$$_CollectionsModelCopyWith<$Res> {
  __$$_CollectionsModelCopyWithImpl(
      _$_CollectionsModel _value, $Res Function(_$_CollectionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$_CollectionsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionsModel implements _CollectionsModel {
  _$_CollectionsModel({required this.id, required this.title});

  factory _$_CollectionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionsModelFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'CollectionsModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionsModelCopyWith<_$_CollectionsModel> get copyWith =>
      __$$_CollectionsModelCopyWithImpl<_$_CollectionsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionsModelToJson(
      this,
    );
  }
}

abstract class _CollectionsModel implements CollectionsModel {
  factory _CollectionsModel(
      {required final String id,
      required final String title}) = _$_CollectionsModel;

  factory _CollectionsModel.fromJson(Map<String, dynamic> json) =
      _$_CollectionsModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionsModelCopyWith<_$_CollectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
