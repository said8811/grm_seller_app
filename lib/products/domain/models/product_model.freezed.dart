// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  ColorModel? get color => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get imgUrl => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get comingPrice => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get shape => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get size => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "")
  String get style => throw _privateConstructorUsedError;
  ModelsModel get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String id,
      String code,
      ColorModel? color,
      int count,
      @JsonKey(defaultValue: "") String imgUrl,
      int price,
      int comingPrice,
      @JsonKey(defaultValue: "") String shape,
      @JsonKey(defaultValue: "") String size,
      @JsonKey(defaultValue: "") String style,
      ModelsModel model});

  $ColorModelCopyWith<$Res>? get color;
  $ModelsModelCopyWith<$Res> get model;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? color = freezed,
    Object? count = null,
    Object? imgUrl = null,
    Object? price = null,
    Object? comingPrice = null,
    Object? shape = null,
    Object? size = null,
    Object? style = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorModel?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      comingPrice: null == comingPrice
          ? _value.comingPrice
          : comingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ModelsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorModelCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $ColorModelCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelsModelCopyWith<$Res> get model {
    return $ModelsModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String code,
      ColorModel? color,
      int count,
      @JsonKey(defaultValue: "") String imgUrl,
      int price,
      int comingPrice,
      @JsonKey(defaultValue: "") String shape,
      @JsonKey(defaultValue: "") String size,
      @JsonKey(defaultValue: "") String style,
      ModelsModel model});

  @override
  $ColorModelCopyWith<$Res>? get color;
  @override
  $ModelsModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? color = freezed,
    Object? count = null,
    Object? imgUrl = null,
    Object? price = null,
    Object? comingPrice = null,
    Object? shape = null,
    Object? size = null,
    Object? style = null,
    Object? model = null,
  }) {
    return _then(_$_ProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorModel?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      comingPrice: null == comingPrice
          ? _value.comingPrice
          : comingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      shape: null == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ModelsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  _$_ProductModel(
      {required this.id,
      required this.code,
      required this.color,
      required this.count,
      @JsonKey(defaultValue: "") required this.imgUrl,
      required this.price,
      required this.comingPrice,
      @JsonKey(defaultValue: "") required this.shape,
      @JsonKey(defaultValue: "") required this.size,
      @JsonKey(defaultValue: "") required this.style,
      required this.model});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final String id;
  @override
  final String code;
  @override
  final ColorModel? color;
  @override
  final int count;
  @override
  @JsonKey(defaultValue: "")
  final String imgUrl;
  @override
  final int price;
  @override
  final int comingPrice;
  @override
  @JsonKey(defaultValue: "")
  final String shape;
  @override
  @JsonKey(defaultValue: "")
  final String size;
  @override
  @JsonKey(defaultValue: "")
  final String style;
  @override
  final ModelsModel model;

  @override
  String toString() {
    return 'ProductModel(id: $id, code: $code, color: $color, count: $count, imgUrl: $imgUrl, price: $price, comingPrice: $comingPrice, shape: $shape, size: $size, style: $style, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.comingPrice, comingPrice) ||
                other.comingPrice == comingPrice) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, color, count, imgUrl,
      price, comingPrice, shape, size, style, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
      {required final String id,
      required final String code,
      required final ColorModel? color,
      required final int count,
      @JsonKey(defaultValue: "") required final String imgUrl,
      required final int price,
      required final int comingPrice,
      @JsonKey(defaultValue: "") required final String shape,
      @JsonKey(defaultValue: "") required final String size,
      @JsonKey(defaultValue: "") required final String style,
      required final ModelsModel model}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String get id;
  @override
  String get code;
  @override
  ColorModel? get color;
  @override
  int get count;
  @override
  @JsonKey(defaultValue: "")
  String get imgUrl;
  @override
  int get price;
  @override
  int get comingPrice;
  @override
  @JsonKey(defaultValue: "")
  String get shape;
  @override
  @JsonKey(defaultValue: "")
  String get size;
  @override
  @JsonKey(defaultValue: "")
  String get style;
  @override
  ModelsModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
