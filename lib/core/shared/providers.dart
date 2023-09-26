import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/core/application/change_ui_notifier.dart';
import 'package:grm_cashier/core/application/kassa_state_notifier.dart';
import 'package:grm_cashier/core/infrastructure/kassa_repository.dart';

final dioProvider = Provider((ref) => Dio());

final kassaRepository =
    Provider((ref) => KassaRepository(ref.watch(dioProvider)));

final kassaNotifier = StateNotifierProvider<KassaNotifier, String>(
    (ref) => KassaNotifier(ref.watch(kassaRepository)));

final mainPageNotifier =
    StateNotifierProvider<MainPageStateNotifier, MainPageStates>(
        (ref) => MainPageStateNotifier());
