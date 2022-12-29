import 'package:non_functional_variant/src/domain/entity/food_exception.dart';

extension FoodExceptionX on FoodException {
  String toUserMessage() {
    if (this is FoodGetException) return 'Ошибка получения еды';

    if (this is FoodSaveException) return 'Ошибка сохранения еды';

    if (this is FoodUnknownException) return 'Неизвестная ошибка еды';

    return '';
  }
}
