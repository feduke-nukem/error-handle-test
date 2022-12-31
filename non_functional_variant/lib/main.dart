import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:non_functional_variant/src/domain/bloc/food_bloc/food_bloc.dart';
import 'package:non_functional_variant/src/domain/entity/food.dart';
import 'package:non_functional_variant/src/domain/repository/food_repository.dart';
import 'package:non_functional_variant/src/util/bloc_observer.dart';
import 'package:non_functional_variant/src/util/food_exception_mapper.dart';
import 'package:non_functional_variant/src/util/logger.dart';

void main() {
  Bloc.observer = DummyBlocObserver();

  PlatformDispatcher.instance.onError = (error, stack) {
    DummyLogger.instance.e(error.toString(), error, stack);

    return true;
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Non functional'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _bloc = FoodBloc(FoodRepository());
  late final StreamSubscription<FoodState> _sub;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _sub = _bloc.stream.listen((event) {
      event.mapOrNull(
        error: (value) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              value.error.toUserMessage(),
            ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    _sub.cancel();
    _bloc.close();
    super.dispose();
  }

  void _incrementCounter() {
    _bloc.add(
      _counter.isEven
          ? const FoodEvent.saved(
              Food(id: 1, name: 'Borgar', price: 2),
            )
          : const FoodEvent.started(),
    );
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
