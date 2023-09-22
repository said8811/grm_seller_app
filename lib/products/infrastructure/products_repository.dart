import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductsRepository {
  final Dio dio;
  ProductsRepository(this.dio);

  Future<List<ProductModel>> getProducts() async {
    try {
      final pref = await SharedPreferences.getInstance();
      final token = pref.getString("token");
      final Response response = await dio.get(
        "https://grm.getter.uz/product",
        queryParameters: {
          "limit": 20,
          "page": 1,
        },
        options: Options(
          headers: {'Cookie': 'access_token_user=$token'},
        ),
      );
      if (response.statusCode == 200) {
        return (response.data['items'] as List)
            .map((e) => ProductModel.fromJson(e))
            .toList();
      } else {
        throw Exception(response.statusMessage.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e);
    }
  }

  Future<Either<String, String>> createOrder(
    String productId,
    String kassaId,
    int price,
    int priceInPlastik,
    int amount,
  ) async {
    try {
      final pref = await SharedPreferences.getInstance();
      final token = pref.getString("token");
      final response = await dio.post(
        "https://grm.getter.uz/order",
        data: {
          "seller": pref.getString("id"),
          "product": productId,
          "price": price,
          "plasticSum": priceInPlastik,
          "x": amount,
          "kassa": kassaId
        },
        options: Options(
          headers: {'Cookie': 'access_token_user=$token'},
        ),
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return right("succes");
      } else {
        return left(response.data['message'].toString());
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
