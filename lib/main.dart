// import 'package:bloc_todo_api/bloc_api/bloc_bloc.dart';
// import 'package:bloc_todo_api/bloc_api/bloc_view.dart';
import 'package:bloc_todo_api/bloc_todo/todo_state.dart';
import 'package:bloc_todo_api/bloc_todo/todo_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBloc(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: TodoView()),
    );
  }
}
