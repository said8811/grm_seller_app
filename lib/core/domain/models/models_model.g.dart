// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelsModelImpl _$$ModelsModelImplFromJson(Map<String, dynamic> json) =>
    _$ModelsModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      collection:
          CollectionsModel.fromJson(json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ModelsModelImplToJson(_$ModelsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'collection': instance.collection,
    };
