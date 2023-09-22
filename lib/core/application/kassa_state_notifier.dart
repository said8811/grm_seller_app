import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/core/infrastructure/kassa_repository.dart';

class KassaNotifier extends StateNotifier<String> {
  final KassaRepository repository;
  KassaNotifier(this.repository) : super("") {
    getKassaId();
  }

  Future<void> getKassaId() async {
    state = await repository.getKassaId();
  }
}
