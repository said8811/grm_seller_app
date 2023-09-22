import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KassaRepository {
  final Dio dio;
  KassaRepository(this.dio);

  Future<String> getKassaId() async {
    try {
      final pref = await SharedPreferences.getInstance();
      final token = pref.getString("token");
      final filialId = pref.getString("filial");
      final response = await dio.get(
        "https://grm.getter.uz/kassa/open-kassa/$filialId",
        options: Options(
          headers: {'Cookie': 'access_token_user=$token'},
        ),
      );
      if (response.statusCode == 200) {
        return response.data['id'].toString();
      } else {
        return response.data['message'].toString();
      }
    } catch (e) {
      return e.toString();
    }
  }
}
