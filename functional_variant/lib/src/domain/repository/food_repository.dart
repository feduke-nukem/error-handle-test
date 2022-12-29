import 'package:functional_variant/src/domain/entity/food.dart';
import 'package:functional_variant/src/domain/repository/data/get_failure.dart';
import 'package:functional_variant/src/domain/repository/data/get_result.dart';
import 'package:functional_variant/src/domain/repository/data/save_failure.dart';
import 'package:functional_variant/src/domain/repository/data/save_result.dart';
import 'package:functional_variant/src/util/logger.dart';

final _food = List.generate(
  10,
  (index) => Food(id: index, name: 'Food $index', price: index * 1.26),
);

abstract class IFoodRepository {
  Future<FoodGetResult> get();

  Future<FoodSaveResult> save(Food food);
}

class FoodRepository implements IFoodRepository {
  @override
  Future<FoodGetResult> get() async {
    try {
      throw Exception('Oops');
      return Future.delayed(
        const Duration(seconds: 3),
        () => FoodGetResult.success(
          _food.toList()..shuffle(),
        ),
      );
    } on Exception catch (e, stack) {
      DummyLogger.instance.e(e.toString(), e, stack);

      return FoodGetResult.failure(
        FoodGetFailure(parentException: e, stackTrace: stack),
      );
    }
  }

  @override
  Future<FoodSaveResult> save(Food food) async {
    try {
      throw Exception('Oops');
      return Future.delayed(
        const Duration(seconds: 3),
        () => const FoodSaveResult.success(),
      );
    } on Exception catch (e, stack) {
      DummyLogger.instance.e(e.toString(), e, stack);

      return FoodSaveResult.failure(
        FoodSaveFailure(parentException: e, stackTrace: stack),
      );
    }
  }
}
