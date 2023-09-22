import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/auth/application/auth_notifier.dart';
import 'package:grm_cashier/auth/infrastructure/auth_repository.dart';

final authRepositoryProvider = Provider((ref) => AuthRepository());

final auhtStateNotifier = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(ref.watch(authRepositoryProvider)));
