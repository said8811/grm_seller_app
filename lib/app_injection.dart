import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grm_cashier/core/infrastructure/hive_data_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_injection.freezed.dart';

@freezed
class AppInjections with _$AppInjections {
  const factory AppInjections({
    required SharedPreferences sharedPrefs,
    required Dio dio,
    required HiveDataStore dataStore,
  }) = _AppInjections;
}

class AppConfig {
  String apiKey;
  String baseUrl;

  AppConfig({required this.apiKey, required this.baseUrl});
}

class Injection {
  Future<AppInjections> setUpInjection() async {
    final configFile = await rootBundle.loadString('assets/config/main.json');
    final configData = jsonDecode(configFile);
    final sharedPrefs = await SharedPreferences.getInstance();

    final dataStore = HiveDataStore();
    await dataStore.init();
    final appConfig = AppConfig(
      apiKey: configData['API_KEY'] as String,
      baseUrl: configData['BASE_API_URL'] as String,
    );
    final dioBaseOptions = BaseOptions(
      baseUrl: appConfig.baseUrl,
      followRedirects: false,
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
    );

    final dio = Dio(dioBaseOptions);

    return AppInjections(
      sharedPrefs: sharedPrefs,
      dio: dio,
      dataStore: dataStore,
    );
  }
}
