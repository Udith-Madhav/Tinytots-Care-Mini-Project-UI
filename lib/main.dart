import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';
import 'package:flutter_mini_project/BabySitter%20Activity.dart';
import 'package:flutter_mini_project/Babysitter%20Login.dart';
import 'package:flutter_mini_project/Babysitter%20Menu.dart';
import 'package:flutter_mini_project/Babysitter%20Profile.dart';
import 'package:flutter_mini_project/Bbaysitter%20Home.dart';
import 'package:flutter_mini_project/Booking%20Success.dart';
import 'package:flutter_mini_project/Category.dart';
import 'package:flutter_mini_project/DBooking.dart';
import 'package:flutter_mini_project/Dbooking2.dart';
import 'package:flutter_mini_project/Doctor%20Login.dart';
import 'package:flutter_mini_project/Doctor.dart';
import 'package:flutter_mini_project/Food.dart';
import 'package:flutter_mini_project/Front_Page.dart';
import 'package:flutter_mini_project/Jeni.dart';
import 'package:flutter_mini_project/PLogin.dart';
import 'package:flutter_mini_project/Main%20Doctor.dart';
import 'package:flutter_mini_project/My%20Children.dart';
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
      home: FrontPage(),
    );
  }
}
