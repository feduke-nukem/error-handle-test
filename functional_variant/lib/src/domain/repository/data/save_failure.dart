import 'package:functional_variant/src/domain/entity/failure.dart';

class FoodSaveFailure extends Failure {
  const FoodSaveFailure({
    super.debugMessage,
    super.message,
    super.parentException,
    super.stackTrace,
  });

  @override
  String toString() => 'FoodSaveFailure';
}
