part of 'food_bloc.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState.loading({
    @Default([]) List<Food> foods,
  }) = _Loading;

  const factory FoodState.loaded({
    required List<Food> foods,
  }) = _Loaded;

  const factory FoodState.error({
    @Default([]) List<Food> foods,
    required Exception error,
  }) = _Error;
}
