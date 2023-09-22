// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String,
      code: json['code'] as String,
      color: json['color'] == null
          ? null
          : ColorModel.fromJson(json['color'] as Map<String, dynamic>),
      count: json['count'] as int,
      imgUrl: json['imgUrl'] as String? ?? '',
      otherImgs: (json['otherImgs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      price: json['price'] as int,
      comingPrice: json['comingPrice'] as int,
      shape: json['shape'] as String? ?? '',
      size: json['size'] as String? ?? '',
      style: json['style'] as String? ?? '',
      model: ModelsModel.fromJson(json['model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'color': instance.color,
      'count': instance.count,
      'imgUrl': instance.imgUrl,
      'otherImgs': instance.otherImgs,
      'price': instance.price,
      'comingPrice': instance.comingPrice,
      'shape': instance.shape,
      'size': instance.size,
      'style': instance.style,
      'model': instance.model,
    };
