import 'package:grm_cashier/core/domain/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDataStore {
  //type ids
  static const userTypeId = 0;

  //box names
  static const userBox = "userBox";

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter<UserModel>(UserModelAdapter());

    // open boxes
    await Future.wait([
      Hive.openBox<UserModel>(userBox),
    ]);
  }

  static Future<void> clear() async {
    await Future.wait([
      Hive.box<UserModel>(userBox).clear(),
    ]);
  }
}
