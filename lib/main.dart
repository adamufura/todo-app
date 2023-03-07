import 'package:flutter/material.dart';
import 'package:todoapp/screens/home_screen.dart';
import 'package:todoapp/screens/todo_splash.dart';
import 'package:todoapp/screens/todos_screen.dart';

void main(List<String> args) {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo App",
      home: TodoSplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        TodosScreen.routeName: (context) => TodosScreen()
      },
    );
  }
}
