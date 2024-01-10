import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/auth/application/auth_notifier.dart';
import 'package:grm_cashier/auth/infrastructure/auth_repository.dart';
import 'package:grm_cashier/core/shared/providers.dart';

final authRepositoryProvider = Provider((ref) =>
    AuthRepository(ref.watch(dioProvider), ref.watch(sharedPreference)));

final auhtStateNotifier = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(
        ref.watch(authRepositoryProvider), ref.watch(sharedPreference)));
