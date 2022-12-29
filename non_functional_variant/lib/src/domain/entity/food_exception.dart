abstract class FoodException implements Exception {
  final String message;

  const FoodException(this.message);

  @override
  String toString() => message;
}

class FoodGetException extends FoodException {
  const FoodGetException(super.message);
}

class FoodSaveException extends FoodException {
  const FoodSaveException(super.message);
}

class FoodUnknownException extends FoodException {
  const FoodUnknownException(super.message);
}
