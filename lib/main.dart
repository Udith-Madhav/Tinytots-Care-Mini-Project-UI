import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Category.dart';
import 'package:flutter_mini_project/Front_Page.dart';
import 'package:flutter_mini_project/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Catogery(),
    );
  }
}
