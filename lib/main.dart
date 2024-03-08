import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';
import 'package:flutter_mini_project/Babysitter%20Login.dart';
import 'package:flutter_mini_project/Category.dart';
import 'package:flutter_mini_project/DBooking.dart';
import 'package:flutter_mini_project/Dbooking2.dart';
import 'package:flutter_mini_project/Doctor%20Login.dart';
import 'package:flutter_mini_project/Doctor.dart';
import 'package:flutter_mini_project/Front_Page.dart';
import 'package:flutter_mini_project/Login.dart';
import 'package:flutter_mini_project/Parent%20Home.dart';
import 'package:flutter_mini_project/Parent%20Login.dart';
import 'package:flutter_mini_project/Staff.dart';

import 'Parent Login Second.dart';

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
      home: Dbooking2(),
    );
  }
}
