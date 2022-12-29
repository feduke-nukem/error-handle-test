import 'package:bloc/bloc.dart';
import 'package:non_functional_variant/src/util/logger.dart';

class DummyBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    /// Либо логаем в обозревателе
    DummyLogger.instance
        .e('Bloc: ${bloc.runtimeType} - error: $error', error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}
