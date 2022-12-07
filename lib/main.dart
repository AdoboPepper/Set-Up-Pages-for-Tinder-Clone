import 'package:flutter/material.dart';
import 'package:navpractice/pages/log_in.dart';
import 'package:navpractice/pages/welcome_to_tinder.dart';
import 'package:navpractice/pages/name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LogIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}


