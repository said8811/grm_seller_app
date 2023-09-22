// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelsModel _$ModelsModelFromJson(Map<String, dynamic> json) {
  return _ModelsModel.fromJson(json);
}

/// @nodoc
mixin _$ModelsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  CollectionsModel get collection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelsModelCopyWith<ModelsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsModelCopyWith<$Res> {
  factory $ModelsModelCopyWith(
          ModelsModel value, $Res Function(ModelsModel) then) =
      _$ModelsModelCopyWithImpl<$Res, ModelsModel>;
  @useResult
  $Res call({String id, String title, CollectionsModel collection});

  $CollectionsModelCopyWith<$Res> get collection;
}

/// @nodoc
class _$ModelsModelCopyWithImpl<$Res, $Val extends ModelsModel>
    implements $ModelsModelCopyWith<$Res> {
  _$ModelsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? collection = null,
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
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionsModelCopyWith<$Res> get collection {
    return $CollectionsModelCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ModelsModelCopyWith<$Res>
    implements $ModelsModelCopyWith<$Res> {
  factory _$$_ModelsModelCopyWith(
          _$_ModelsModel value, $Res Function(_$_ModelsModel) then) =
      __$$_ModelsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, CollectionsModel collection});

  @override
  $CollectionsModelCopyWith<$Res> get collection;
}

/// @nodoc
class __$$_ModelsModelCopyWithImpl<$Res>
    extends _$ModelsModelCopyWithImpl<$Res, _$_ModelsModel>
    implements _$$_ModelsModelCopyWith<$Res> {
  __$$_ModelsModelCopyWithImpl(
      _$_ModelsModel _value, $Res Function(_$_ModelsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? collection = null,
  }) {
    return _then(_$_ModelsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModelsModel implements _ModelsModel {
  _$_ModelsModel(
      {required this.id, required this.title, required this.collection});

  factory _$_ModelsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ModelsModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final CollectionsModel collection;

  @override
  String toString() {
    return 'ModelsModel(id: $id, title: $title, collection: $collection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModelsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.collection, collection) ||
                other.collection == collection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, collection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModelsModelCopyWith<_$_ModelsModel> get copyWith =>
      __$$_ModelsModelCopyWithImpl<_$_ModelsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModelsModelToJson(
      this,
    );
  }
}

abstract class _ModelsModel implements ModelsModel {
  factory _ModelsModel(
      {required final String id,
      required final String title,
      required final CollectionsModel collection}) = _$_ModelsModel;

  factory _ModelsModel.fromJson(Map<String, dynamic> json) =
      _$_ModelsModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  CollectionsModel get collection;
  @override
  @JsonKey(ignore: true)
  _$$_ModelsModelCopyWith<_$_ModelsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
