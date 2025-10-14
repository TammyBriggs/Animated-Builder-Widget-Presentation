import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedBuilder Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF40D4FE), // Neon Blue
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Inter',
      ),
      home: const SplashScreen(),
    );
  }
}