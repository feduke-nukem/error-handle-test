part of 'food_bloc.dart';

@freezed
class FoodEvent with _$FoodEvent {
  const factory FoodEvent.started() = _Started;

  const factory FoodEvent.saved(Food food) = _Saved;
}
