// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model.g.dart';
part 'info_model.freezed.dart';

@freezed
class InfoModel with _$InfoModel {
  factory InfoModel({
    required String id,
    required String isActive,
    required int price,
    @JsonKey(name: "x") required int amount,
    required int additionalProfitSum,
    required int netProfitSum,
    required int plasticSum,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}
