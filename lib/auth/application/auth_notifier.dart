import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/auth/infrastructure/auth_repository.dart';

enum AuthState {
  initial,
  succes,
  failure,
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository repository;
  AuthNotifier(this.repository) : super(AuthState.initial);
  Future<void> login(String login) async {
    final response = await repository.login(login);

    state = response.fold((l) => AuthState.failure, (r) => AuthState.succes);
  }
}
