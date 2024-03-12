import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';

class AdminActivity extends StatefulWidget {
  const AdminActivity({super.key});

  @override
  State<AdminActivity> createState() => _AdminActivityState();
}

class _AdminActivityState extends State<AdminActivity> {
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
                           Color(0xFFE8C4E9),
                           Color(0xFFFFFFFF),
                          ]
                        )
                ),
              ),

              Positioned(
                bottom: 0,
                left: 160,
                child: Text('Activity',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,fontFamily: 'GravitasOne'),)
              ),
              ]
            ),

            Positioned(
              top: 250,
              left: 150,
              child: Container(
                      width: 200,
                      height: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(width: 1,color: Colors.black),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)
                                )
                              ),
                              onPressed: () {}, 
                              child: Text('Add',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),)
                            ),
                          ),
              
                          SizedBox(
                            width: 200,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(width: 1,color: Colors.black),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)
                                )
                              ),
                              onPressed: () {}, 
                              child: Text('Update&Delete',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),)
                            ),
                          ),
                        ],
                      ),
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