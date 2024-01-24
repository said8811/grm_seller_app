import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grm_cashier/products/domain/models/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductsRepository {
  final Dio dio;
  final SharedPreferences pref;
  ProductsRepository(this.dio, this.pref);

  Future<List<ProductModel>> getProducts() async {
    try {
      final pref = await SharedPreferences.getInstance();
      final token = pref.getString("token");
      final Response response = await dio.get(
        "product",
        queryParameters: {
          "limit": 20,
          "page": 1,
        },
        options: Options(
          headers: {'Cookie': 'access_token_user=$token'},
        ),
      );
      log("message");
      if (response.statusCode == 200) {
        return (response.data['items'] as List)
            .map((e) => ProductModel.fromJson(e))
            .toList();
      } else {
        throw Exception(response.statusMessage.toString());
      }
    } catch (e) {
      log(e.toString());
      return [];
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
      final token = pref.getString("token");
      final response = await dio.post(
        "order",
        data: {
          "product": productId,
          "price": price,
          "plasticSum": priceInPlastik,
          "x": amount,
          "kassa": kassaId,
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
      log(e.toString());
      return left(e.toString());
    }
  }
}
