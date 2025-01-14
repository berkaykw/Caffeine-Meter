// ignore_for_file: prefer_const_constructors, file_names, camel_case_types

import 'package:flutter/material.dart';

class deneme extends StatefulWidget {
  const deneme({super.key});

  @override
  State<deneme> createState() => _denemeState();
}

class _denemeState extends State<deneme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("textdata"),
    );
  }
}