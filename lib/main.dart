import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/app.dart';
import 'package:flutter_cubit/counter/counter.dart';
import 'package:flutter_cubit/counter_observer.dart';

void main(){
  Bloc.observer = const CounterObserver();

  runApp(const CounterApp());
 }