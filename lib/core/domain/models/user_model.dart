// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grm_cashier/core/infrastructure/hive_data_store.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@HiveType(typeId: HiveDataStore.userTypeId)
@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @HiveField(0) required String id,
    @HiveField(1) @JsonKey(defaultValue: '') required String avatar,
    @HiveField(2) @JsonKey(defaultValue: '') required String firstName,
    @HiveField(3) @JsonKey(defaultValue: '') required String lastName,
    @HiveField(4) required String login,
    @HiveField(5) @JsonKey(defaultValue: '') required String email,
    @HiveField(6) @JsonKey(defaultValue: '') required String phone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
