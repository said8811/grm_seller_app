import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grm_cashier/core/domain/models/collections_model.dart';

part 'models_model.g.dart';
part 'models_model.freezed.dart';

@freezed
class ModelsModel with _$ModelsModel {
  factory ModelsModel({
    required String id,
    required String title,
    required CollectionsModel collection,
  }) = _ModelsModel;

  factory ModelsModel.fromJson(Map<String, dynamic> json) =>
      _$ModelsModelFromJson(json);
}
