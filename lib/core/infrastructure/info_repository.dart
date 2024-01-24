import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:grm_cashier/core/domain/models/info_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoRepository {
  final Dio dio;
  InfoRepository(this.dio);

  Future<Either<String, List<InfoModel>>> getInf() async {
    try {
      final pref = await SharedPreferences.getInstance();
      final token = pref.getString("token");
      final response = await dio.get(
        "https://grm.getter.uz/user/info/me",
        options: Options(
          headers: {'Cookie': 'access_token_user=$token'},
        ),
      );
      if (response.statusCode == 200) {
        return right((response.data['sellerOrders'] as List)
            .map((e) => InfoModel.fromJson(e))
            .toList());
      } else {
        return left(response.data['message'].toString());
      }
    } catch (e) {
      return left(e.toString());
    }
  }
}
