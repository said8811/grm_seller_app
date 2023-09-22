// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'models_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelsModel _$$_ModelsModelFromJson(Map<String, dynamic> json) =>
    _$_ModelsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      collection:
          CollectionsModel.fromJson(json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ModelsModelToJson(_$_ModelsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'collection': instance.collection,
    };
