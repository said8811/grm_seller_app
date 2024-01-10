import 'package:dio/dio.dart';

class ReportRepository {
  final Dio _dio;
  ReportRepository(this._dio);

  Future<void> getReports() async {
    final Response response = await _dio.get('user');
    if (response.statusCode == 200) {}
  }
}
