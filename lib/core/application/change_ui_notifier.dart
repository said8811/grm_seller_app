import 'package:flutter_riverpod/flutter_riverpod.dart';

enum MainPageStates { pure, product, collection, otchet }

class MainPageStateNotifier extends StateNotifier<MainPageStates> {
  MainPageStateNotifier() : super(MainPageStates.product);

  void changeState(MainPageStates changeState) {
    state = changeState;
  }
}
