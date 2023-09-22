import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:grm_cashier/core/domain/models/collections_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CollectionsRepository {
  final Dio dio = Dio();
  CollectionsRepository();

  Future<List<CollectionsModel>> getCollections() async {
    try {
      final pref = await SharedPreferences.getInstance();
      final token = pref.getString("token");
      final Response response = await dio.get(
        "https://grm.getter.uz/collection",
        queryParameters: {
          "limit": 20,
          "page": 1,
          "isActive": true,
        },
        options: Options(
          headers: {'Cookie': 'access_token_user=$token'},
        ),
      );
      if (response.statusCode == 200) {
        return (response.data['items'] as List)
            .map((e) => CollectionsModel.fromJson(e))
            .toList();
      } else {
        throw Exception(response.statusMessage.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }
}
