import 'package:fl_bloc_counter_app/exampl2/home_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detail2Page extends StatelessWidget {
  const Detail2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(title: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Text('Detail2 Page: $state');}),
          centerTitle: true,
    ),
    body: Center(child: BlocBuilder<CounterCubit, int>(builder: (context, state) {
              return Text('$state', style: const TextStyle(fontSize: 200, color: Colors.lightGreen), 
              );
            }),),    
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