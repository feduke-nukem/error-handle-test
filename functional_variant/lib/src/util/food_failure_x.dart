import 'package:functional_variant/src/domain/entity/failure.dart';
import 'package:functional_variant/src/domain/repository/data/get_failure.dart';
import 'package:functional_variant/src/domain/repository/data/save_failure.dart';

extension FailureX on Failure {
  String toUserMessage() {
    switch (runtimeType) {
      case FoodGetFailure:
        return 'Ошибка получения еды';
      case FoodSaveFailure:
        return 'Ошибка сохранения еды';
      default:
        return '';
    }
  }
}
