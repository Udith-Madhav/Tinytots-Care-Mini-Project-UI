import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Babysitter%20Login.dart';
import 'package:flutter_mini_project/Doctor%20Login.dart';
import 'package:flutter_mini_project/PLogin.dart';
import 'package:flutter_mini_project/Parent%20Login.dart';

class Catogery extends StatefulWidget {
  const Catogery({super.key});

  @override
  State<Catogery> createState() => _CatogeryState();
}

class _CatogeryState extends State<Catogery> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Color(0xFFACE3EF),
              width: 153,
              height: 28,
              child: Center(
                child: Text('Select Category',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                ),
              ),
            ),

            Container(
              width:320,
              height: 104,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 227, 219, 219)),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment(0.5, 1),
                  colors: <Color>[
                    Color(0xFFE8C4E9),
                    Color(0xFFFFFFFF)
                  ]
                )
              ),
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Parent()));
                  },
                 child: Text('Parents',
                 style: TextStyle(
                  fontFamily: 'GravitasOne',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                 ),
                 )),
              )
            ),

            Container(
              width:320,
              height: 104,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 227, 219, 219)),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xFFFFFB94),
                    Color(0xFFFFFFFF)
                  ]
                )
              ),
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BsitterLogin()));
                  },
                 child: Text('Babysitters',
                 style: TextStyle(
                  fontFamily: 'GravitasOne',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                 ),
                 )),
              )
            ),

            Container(
              width:320,
              height: 104,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 227, 219, 219)),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment(0.5, 1),
                  colors: <Color>[
                    Color(0xFFBFD2E4),
                    Color(0xFFFFFFFF)
                  ]
                )
              ),
              child: Center(
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorLogin()));
                  },
                 child: Text('Doctors',
                 style: TextStyle(
                  fontFamily: 'GravitasOne',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                 ),
                 )),
              )
            ),

          Container(
            width: 320,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call),
                SizedBox(width: 5,),
                Text("Childline Number: 1098")
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}