import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_model.g.dart';
part 'color_model.freezed.dart';

@freezed
class ColorModel with _$ColorModel {
  factory ColorModel({
    required String id,
    required String title,
    required String code,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);
  factory ColorModel.initial() => ColorModel(id: "", title: "", code: "");
}
