import 'package:fl_bloc_counter_app/exampl2/detail_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[100],
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter Bloc Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the Bloc button this many times:'),            
            BlocBuilder<CounterCubit, int>(builder: (context, state) {
              return Text('$state', style: const TextStyle(fontSize: 100, color: Colors.blue), 
              );
            }),
            ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) => const Detail2Page(),));}, 
            child: const Text("Go Detail2")),
          ],
        ),
      ),
      floatingActionButton: Row( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement(),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 50),          
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ), 
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  increment() => emit(state + 1);
  decrement() => emit(state - 1);
}
