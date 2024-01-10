import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/auth/infrastructure/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthState {
  initial,
  succes,
  failure,
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository repository;
  final SharedPreferences _pref;
  AuthNotifier(this.repository, this._pref) : super(AuthState.initial) {
    checkAuth();
  }

  Future<void> checkAuth() async {
    final token = _pref.getString("token") ?? "";
    state = token.isEmpty ? AuthState.initial : AuthState.succes;
    log(state.toString());
  }

  Future<void> login(String login) async {
    final response = await repository.login(login);

    state = response.fold(
      (l) => AuthState.failure,
      (r) => AuthState.succes,
    );
    state = AuthState.initial;
  }
}
