import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/core/domain/models/info_model.dart';
import 'package:grm_cashier/core/infrastructure/info_repository.dart';

class InfoNotifier extends StateNotifier<AsyncValue<List<InfoModel>>> {
  final InfoRepository _repository;
  InfoNotifier(this._repository) : super(const AsyncData([]));

  Future<void> getInfo() async {
    state = const AsyncLoading();
    final data = await _repository.getInf();
    state = data.fold(
      (l) => AsyncError(l, StackTrace.current),
      (r) => AsyncData(r),
    );
  }
}
