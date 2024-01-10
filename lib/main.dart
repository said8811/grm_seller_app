import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/app_injection.dart';
import 'package:grm_cashier/auth/application/auth_notifier.dart';
import 'package:grm_cashier/auth/presentation/auth_page.dart';
import 'package:grm_cashier/auth/shared/providers.dart';
import 'package:grm_cashier/core/presentation/main_page.dart';
import 'package:grm_cashier/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Injection injection = Injection();
  final appInjection = await injection.setUpInjection();
  runApp(ProviderScope(overrides: [
    dioProvider.overrideWithValue(appInjection.dio),
    hiveDataStore.overrideWithValue(appInjection.dataStore),
    sharedPreference.overrideWithValue(appInjection.sharedPrefs)
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GRM cashier',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE0DFD6)),
          useMaterial3: true),
      home: const MyProject(),
    );
  }
}

class MyProject extends ConsumerWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(auhtStateNotifier);
    return auth == AuthState.succes ? const MainPage() : const AuthPage();
  }
}
