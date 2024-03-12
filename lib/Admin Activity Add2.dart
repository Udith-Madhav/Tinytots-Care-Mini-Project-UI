import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';

class Add2 extends StatefulWidget {
  const Add2({super.key});

  @override
  State<Add2> createState() => _Add2State();
}

class _Add2State extends State<Add2> {
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
                      Text('Activity'),
                      Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Dancing'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Column(
                            children: [
                              Text('06/12/2023'),
                              Text('2:00pm')
                            ],
                          ),
                        )
                      ],
                    ),
                    
                  )
                    ],
                  )
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
        ],
      ),
    );
  }
}