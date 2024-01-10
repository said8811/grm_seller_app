import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/collection/infrastructure/collection_repository.dart';
import 'package:grm_cashier/core/domain/models/collections_model.dart';
import 'package:grm_cashier/core/shared/providers.dart';

final collecatonsRepoProvider = Provider((ref) =>
    CollectionsRepository(ref.watch(dioProvider), ref.watch(sharedPreference)));

final getCollections = FutureProvider<List<CollectionsModel>>(
    (ref) => ref.watch(collecatonsRepoProvider).getCollections());
