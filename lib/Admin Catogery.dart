import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Activity.dart';
import 'package:flutter_mini_project/Admin%20Babysitter.dart';
import 'package:flutter_mini_project/Admin%20Doctor.dart';
import 'package:flutter_mini_project/Admin%20Login.dart';
import 'package:flutter_mini_project/Admin%20Parent.dart';
import 'package:flutter_mini_project/PLogin.dart';

class Adcatogery extends StatefulWidget {
  const Adcatogery({super.key});

  @override
  State<Adcatogery> createState() => _AdcatogeryState();
}

class _AdcatogeryState extends State<Adcatogery> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminParent()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminBabysitter()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminDoctor()));
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
              width:320,
              height: 104,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 227, 219, 219)),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color(0xFF61EDDC),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminActivity()));
                  },
                 child: Text('Activity',
                 style: TextStyle(
                  fontFamily: 'GravitasOne',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                 ),
                 )),
              )
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4ACB57)
              ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Adlogin()));
            },
            child: Row(
              mainAxisSize:MainAxisSize.min,children: [
                Text('Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black,
                ),
                ),
                SizedBox(width: 5,),
                Icon(
                  Icons.logout,
                  size: 15,
                  color: Colors.black,
                )
              ] ,
            ), 
            )
          ],
        ),
      ),
    );
  }
}