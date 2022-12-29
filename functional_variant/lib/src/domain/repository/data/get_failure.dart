import 'package:functional_variant/src/domain/entity/failure.dart';

class FoodGetFailure extends Failure {
  const FoodGetFailure({
    super.debugMessage,
    super.message,
    super.parentException,
    super.stackTrace,
  });

  @override
  String toString() => 'FoodGetFailure';
}
