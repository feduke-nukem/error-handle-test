import 'package:non_functional_variant/src/domain/entity/food_exception.dart';

extension FoodExceptionMapper on Exception {
  String toUserMessage() {
    if (this is FoodGetException) return 'Ошибка получения еды';

    if (this is FoodSaveException) return 'Ошибка сохранения еды';

    return 'Неизвестная ошибка еды';
  }
}
