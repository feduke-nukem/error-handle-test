import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_variant/src/domain/entity/failure.dart';

part 'save_result.freezed.dart';

@freezed
class FoodSaveResult with _$FoodSaveResult {
  const factory FoodSaveResult.success() = _FoodSaveSuccess;

  const factory FoodSaveResult.failure(Failure failure) = _FoodSaveFailure;
}
