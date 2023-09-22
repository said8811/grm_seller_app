import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/collection/infrastructure/collection_repository.dart';
import 'package:grm_cashier/core/domain/models/collections_model.dart';

final collecatonsRepoProvider = Provider((ref) => CollectionsRepository());

final getCollections = FutureProvider<List<CollectionsModel>>(
    (ref) => ref.watch(collecatonsRepoProvider).getCollections());
