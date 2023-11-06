import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grm_cashier/collection/shared/providers.dart';
import 'package:grm_cashier/core/domain/models/collections_model.dart';

class CollectionsView extends ConsumerWidget {
  final Function(CollectionsModel) onTap;
  const CollectionsView({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(getCollections);
    return data.when(
      data: (data) => GridView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
          onTap: onTap(data[index]),
          child: Ink(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                data[index].title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 30,
        ),
      ),
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
