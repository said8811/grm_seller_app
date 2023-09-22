// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grm_cashier/core/domain/models/color_model.dart';
import 'package:grm_cashier/core/domain/models/models_model.dart';

part 'product_model.g.dart';
part 'product_model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    required String id,
    required String code,
    required ColorModel? color,
    required int count,
    @JsonKey(defaultValue: "") required String imgUrl,
    @JsonKey(defaultValue: []) required List<String> otherImgs,
    required int price,
    required int comingPrice,
    @JsonKey(defaultValue: "") required String shape,
    @JsonKey(defaultValue: "") required String size,
    @JsonKey(defaultValue: "") required String style,
    required ModelsModel model,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
