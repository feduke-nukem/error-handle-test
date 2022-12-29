import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_variant/src/domain/entity/failure.dart';
import 'package:functional_variant/src/domain/entity/food.dart';
part 'get_result.freezed.dart';

@freezed
class FoodGetResult with _$FoodGetResult {
  const factory FoodGetResult.success(List<Food> result) = _FoodGetSuccess;

  const factory FoodGetResult.failure(Failure failure) = _FoodGetFailure;
}
