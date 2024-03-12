import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';

class AdminBabysitter extends StatefulWidget {
  const AdminBabysitter({super.key});

  @override
  State<AdminBabysitter> createState() => _AdminBabysitterState();
}

class _AdminBabysitterState extends State<AdminBabysitter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
            ),

            Stack(
              children: [Container(
                width: screenWidth,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(1, 1),
                          colors: <Color>[
                           Color(0xFFFFFB94),
                           Color(0xFFFFFFFF),
                          ]
                        )
                ),
              ),

              Positioned(
                bottom: 0,
                left: 140,
                child: Text('Babysitters',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,fontFamily: 'GravitasOne'),)
              ),
              ]
            ),

            Positioned(
              top: 170,
              left: 70,
              child: Stack(
                children: [
                  Container(
                    width: 380,
                    height: 140,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                  ),

                  Positioned(
                    top: 35,
                    left: 40,
                    child: Container(
                      width: 67,
                      height: 77,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        image: DecorationImage(image: AssetImage('assets/dayana.jpeg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),

                  Positioned(
                    top: 60,
                    left: 160,
                    child: Container(
                      width: 130,
                      height: 23,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Dayana',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'IrishGrover'),),
                          // Icon(Icons.edit,color: Colors.grey,size: 20,),
                          IconButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {}, 
                            icon: Icon(Icons.edit,color: Colors.grey,size: 20,)
                          )
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 90,
                    left: 90,
                    child: Icon(Icons.edit_calendar_outlined)
                  ),

                  Positioned(
                    top: 60,
                    right: 10,
                    child: Icon(Icons.delete)
                  )
                ],
              ),
            ),

            Positioned(
              bottom: 10,
              left: 240,
              child: Container(
                width: 45,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Adcatogery()));
                      }, 
                      icon: Icon(Icons.home)
                    ),
                    Text('HOME',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}