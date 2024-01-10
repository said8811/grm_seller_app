import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final Dio dio;
  final SharedPreferences shared;
  AuthRepository(this.dio, this.shared);

  Future<Either<String, String>> login(String login) async {
    try {
      final response = await dio
          .post("auth/login", data: {"login": login, "password": login});
      if (response.statusCode == 200) {
        log(response.data.toString());
        await shared.setString("token", response.data['accessToken']);
        await shared.setString("filial", response.data['user']['filial']['id']);
        if (response.data['user']['position']['title']
                .toString()
                .toLowerCase() ==
            "seller") {
          return right(response.data['accessToken']);
        } else {
          return left("wrong user");
        }
      } else {
        return left("login error");
      }
    } catch (e) {
      log(e.toString());
      return left(e.toString());
    }
  }
}
