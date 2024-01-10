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
abstract class _$$ModelsModelImplCopyWith<$Res>
    implements $ModelsModelCopyWith<$Res> {
  factory _$$ModelsModelImplCopyWith(
          _$ModelsModelImpl value, $Res Function(_$ModelsModelImpl) then) =
      __$$ModelsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, CollectionsModel collection});

  @override
  $CollectionsModelCopyWith<$Res> get collection;
}

/// @nodoc
class __$$ModelsModelImplCopyWithImpl<$Res>
    extends _$ModelsModelCopyWithImpl<$Res, _$ModelsModelImpl>
    implements _$$ModelsModelImplCopyWith<$Res> {
  __$$ModelsModelImplCopyWithImpl(
      _$ModelsModelImpl _value, $Res Function(_$ModelsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? collection = null,
  }) {
    return _then(_$ModelsModelImpl(
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
class _$ModelsModelImpl implements _ModelsModel {
  _$ModelsModelImpl(
      {required this.id, required this.title, required this.collection});

  factory _$ModelsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelsModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelsModelImpl &&
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
  _$$ModelsModelImplCopyWith<_$ModelsModelImpl> get copyWith =>
      __$$ModelsModelImplCopyWithImpl<_$ModelsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelsModelImplToJson(
      this,
    );
  }
}

abstract class _ModelsModel implements ModelsModel {
  factory _ModelsModel(
      {required final String id,
      required final String title,
      required final CollectionsModel collection}) = _$ModelsModelImpl;

  factory _ModelsModel.fromJson(Map<String, dynamic> json) =
      _$ModelsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  CollectionsModel get collection;
  @override
  @JsonKey(ignore: true)
  _$$ModelsModelImplCopyWith<_$ModelsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
