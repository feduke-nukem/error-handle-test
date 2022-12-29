import 'package:non_functional_variant/src/domain/entity/food.dart';
import 'package:non_functional_variant/src/domain/entity/food_exception.dart';
import 'package:non_functional_variant/src/domain/entity/timeout_exception.dart';

final _food = List.generate(
  10,
  (index) => Food(id: index, name: 'Food $index', price: index * 1.26),
);

abstract class IFoodRepository {
  Future<List<Food>> get();

  Future<void> save(Food food);
}

class FoodRepository implements IFoodRepository {
  @override
  Future<List<Food>> get() async {
    try {
      throw TimeoutException();
      return Future.delayed(
        const Duration(seconds: 3),
        () => _food.toList()..shuffle(),
      );
    } on TimeoutException catch (e, stack) {
      final error = FoodGetException('Food get error: $e');

      /// Пробрасываем наш тип ошибки, изначальный stacktrace
      Error.throwWithStackTrace(error, stack);
    } on Object catch (e, stack) {
      /// Пробрасываем наш тип ошибки, изначальный stacktrace
      Error.throwWithStackTrace(
          const FoodUnknownException('Unknowkn food error'), stack);
    }
  }

  @override
  Future<void> save(Food food) async {
    try {
      throw Exception('Oops');
      return Future.delayed(
        const Duration(seconds: 3),
      );
    } on TimeoutException catch (e, stack) {
      final error = FoodSaveException('Food save error: $e');

      /// Пробрасываем наш тип ошибки, изначальный stacktrace
      Error.throwWithStackTrace(error, stack);
    } on Object catch (e, stack) {
      /// Пробрасываем наш тип ошибки, изначальный stacktrace
      Error.throwWithStackTrace(
          const FoodUnknownException('Unknowkn food error'), stack);
    }
  }
}
