import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:non_functional_variant/src/domain/entity/food.dart';
import 'package:non_functional_variant/src/domain/entity/food_exception.dart';
import 'package:non_functional_variant/src/domain/repository/food_repository.dart';

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
    await _hanlder(
      delegate: () async {
        emit(const FoodState.loading());
        final res = await _repository.get();

        emit(FoodState.loaded(foods: res));
      },
      emit: emit,
    );
  }

  Future<void> _onSaved(_Saved event, Emitter<FoodState> emit) async {
    await _hanlder(
      delegate: () async {
        emit(const FoodState.loading());

        await _repository.save(event.food);

        emit(FoodState.loaded(foods: state.foods));
      },
      emit: emit,
    );
  }

  Future<void> _hanlder(
      {required Future<void> Function() delegate,
      required Emitter<FoodState> emit}) async {
    try {
      final res = await delegate();

      return res;
    } on Exception catch (e) {
      emit(FoodState.error(foods: state.foods, error: e));

      /// Если неизвестная ошибка - делаем переброс до зоны или обозревателя
      //if (e is FoodUnknownException) rethrow;
      if (e is FoodUnknownException || e is! FoodException) addError(e);
    }
  }
}
