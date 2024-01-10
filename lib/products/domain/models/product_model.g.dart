// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      color: json['color'] == null
          ? null
          : ColorModel.fromJson(json['color'] as Map<String, dynamic>),
      count: json['count'] as int,
      imgUrl: json['imgUrl'] as String? ?? '',
      price: json['price'] as int? ?? 0,
      comingPrice: json['comingPrice'] as int? ?? 0,
      shape: json['shape'] as String? ?? '',
      size: json['size'] as String? ?? '',
      style: json['style'] as String? ?? '',
      model: ModelsModel.fromJson(json['model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'color': instance.color,
      'count': instance.count,
      'imgUrl': instance.imgUrl,
      'price': instance.price,
      'comingPrice': instance.comingPrice,
      'shape': instance.shape,
      'size': instance.size,
      'style': instance.style,
      'model': instance.model,
    };
