// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoModelImpl _$$InfoModelImplFromJson(Map<String, dynamic> json) =>
    _$InfoModelImpl(
      id: json['id'] as String,
      isActive: json['isActive'] as String,
      price: json['price'] as int,
      amount: json['x'] as int,
      additionalProfitSum: json['additionalProfitSum'] as int,
      netProfitSum: json['netProfitSum'] as int,
      plasticSum: json['plasticSum'] as int,
    );

Map<String, dynamic> _$$InfoModelImplToJson(_$InfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'price': instance.price,
      'x': instance.amount,
      'additionalProfitSum': instance.additionalProfitSum,
      'netProfitSum': instance.netProfitSum,
      'plasticSum': instance.plasticSum,
    };
