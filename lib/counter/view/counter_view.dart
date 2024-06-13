import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state');
          },
            ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_Increment_Fab'),
            child: const Icon(Icons.exposure_plus_1_sharp),
            onPressed: (){
              context.read<CounterCubit>().increment();
            },),
            FloatingActionButton(
            key: const Key('counterView_Decrement_Fab'),
            child: const Icon(Icons.exposure_neg_1_sharp),
            onPressed: (){
              context.read<CounterCubit>().decrement();
            },),
            FloatingActionButton(
            key: const Key('counterView_Multiply_Fab'),
            child: const Icon(Icons.close),
            onPressed: (){
              context.read<CounterCubit>().multiply();
            },),
            FloatingActionButton(
            key: const Key('counterView_Divide_Fab'),
            child: const Icon(Icons.remove_outlined),
            onPressed: (){
              context.read<CounterCubit>().divide();
            },),
            FloatingActionButton(
            key: const Key('counterView_Reset_Fab'),
            child: const Icon(Icons.exposure_zero_sharp),
            onPressed: (){
              context.read<CounterCubit>().reset();
            },),
        ],
        
      ),
      
    );
  }
}