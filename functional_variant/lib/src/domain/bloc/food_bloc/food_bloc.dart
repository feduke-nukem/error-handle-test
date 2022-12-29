import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_variant/src/domain/entity/failure.dart';
import 'package:functional_variant/src/domain/entity/food.dart';
import 'package:functional_variant/src/domain/repository/food_repository.dart';

part 'food_event.dart';
part 'food_state.dart';
part 'food_bloc.freezed.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final IFoodRepository _repository;
  FoodBloc(this._repository) : super(const FoodState.loading()) {
    on<_Started>(_onStarted);
    on<_Saved>(_onSaved);
  }

  Future<void> _onStarted(_Started event, Emitter<FoodState> emit) async {
    emit(FoodState.loading(foods: state.foods));
    final res = await _repository.get();

    final newState = res.map(
      success: (success) => FoodState.loaded(foods: success.result),
      failure: (failure) => FoodState.error(failure: failure.failure),
    );

    emit(newState);
  }

  Future<void> _onSaved(_Saved event, Emitter<FoodState> emit) async {
    emit(FoodState.loading(foods: state.foods));
    final res = await _repository.save(event.food);

    final newState = res.map(
      success: (success) => FoodState.loaded(foods: state.foods),
      failure: (failure) => FoodState.error(failure: failure.failure),
    );

    emit(newState);
  }
}
