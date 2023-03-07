import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:todoapp/screens/home_screen.dart';

class TodoSplashScreen extends StatelessWidget {
  const TodoSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const HomeScreen(),
      image: Image.asset('assets/images/logo.png'),
      backgroundColor: Colors.indigo,
      photoSize: 100.0,
      onClick: () {},
      useLoader: false,
    );
  }
}
