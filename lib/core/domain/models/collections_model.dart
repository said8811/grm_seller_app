import 'package:freezed_annotation/freezed_annotation.dart';

part 'collections_model.g.dart';
part 'collections_model.freezed.dart';

@freezed
class CollectionsModel with _$CollectionsModel{
  factory CollectionsModel({
    required String id,
    required String title,
  })=_CollectionsModel;

  factory CollectionsModel.fromJson(Map<String,dynamic> json)=>_$CollectionsModelFromJson(json);
}