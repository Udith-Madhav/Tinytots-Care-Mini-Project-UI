import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Activity%20Add2.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight,
              ),

              Container(
                width: screenWidth,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(1, 1),
                          colors: <Color>[
                           Color(0xFF61EDDC),
                           Color(0xFFFFFFFF),
                          ]
                  )
                ),
              ),

              Positioned(
                top: 160,
                left: 80,
                child: Container(
                  width: 360,
                  height: 90,
                  // decoration: BoxDecoration(
                  //   border: Border.all()
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Date'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Date'
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 270,
                left: 80,
                child: Container(
                  width: 360,
                  height: 90,
                  // decoration: BoxDecoration(
                  //   border: Border.all()
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Time'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Time'
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 380,
                left: 80,
                child: Container(
                  width: 360,
                  height: 90,
                  // decoration: BoxDecoration(
                  //   border: Border.all()
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Activity'),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Activity'
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 500,
                left: 200,
                child: SizedBox(
                              width: 135,
                              height: 48,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 1,color: Colors.black),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)
                                  )
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Add2()));
                                }, 
                                child: Text('Add',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),)
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
          )
        ]
      ),
    );
  }
}