// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:caffeine_meter/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caffeine Meter',
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
