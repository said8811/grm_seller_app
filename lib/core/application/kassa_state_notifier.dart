import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/core/infrastructure/kassa_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KassaNotifier extends StateNotifier<String> {
  final KassaRepository repository;
  final SharedPreferences _pref;
  KassaNotifier(this.repository, this._pref) : super("") {
    getKassaId();
  }

  Future<void> getKassaId() async {
    final filialId = _pref.getString("filial") ?? "";
    log(filialId);

    state = await repository.getKassaId(filialId);
  }
}
