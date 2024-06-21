import 'package:flutter/material.dart';
import 'package:loginscreen/Screens/Register_page.dart';
import 'package:loginscreen/Screens/login_page.dart';
import 'package:loginscreen/Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
