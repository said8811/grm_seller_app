import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final Dio dio = Dio();
  AuthRepository();

  Future<Either<String, String>> login(String login) async {
    try {
      final response = await dio.post("https://grm.getter.uz/auth/login",
          data: {"login": login, "password": login});
      if (response.statusCode == 200) {
        final pref = await SharedPreferences.getInstance();
        await pref.setString("token", response.data['accessToken']);
        // await pref.setString("id", response.data['user']['id']);
        // await pref.setString("filial", response.data['user']['filial']['id']);
        return right(response.data['accessToken']);
      } else {
        return left("login error");
      }
    } catch (e) {
      debugPrint(e.toString());
      return left(e.toString());
    }
  }
}
