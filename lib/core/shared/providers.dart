import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/core/application/change_ui_notifier.dart';
import 'package:grm_cashier/core/application/kassa_state_notifier.dart';
import 'package:grm_cashier/core/infrastructure/hive_data_store.dart';
import 'package:grm_cashier/core/infrastructure/kassa_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dioProvider = Provider<Dio>((ref) => throw UnimplementedError());

final hiveDataStore =
    Provider<HiveDataStore>((ref) => throw UnimplementedError());

final sharedPreference =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());

final kassaRepository =
    Provider((ref) => KassaRepository(ref.watch(dioProvider)));

final kassaNotifier = StateNotifierProvider<KassaNotifier, String>((ref) =>
    KassaNotifier(ref.watch(kassaRepository), ref.watch(sharedPreference)));

final mainPageNotifier =
    StateNotifierProvider.autoDispose<MainPageStateNotifier, MainPageStates>(
        (ref) => MainPageStateNotifier());
