import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';

class AdminDoctor2 extends StatefulWidget {
  const AdminDoctor2({super.key});

  @override
  State<AdminDoctor2> createState() => _AdminDoctor2State();
}

class _AdminDoctor2State extends State<AdminDoctor2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: screenWidth,
                height: screenHeight,
              ),

              Container(
                width: screenWidth,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(1, 1),
                          colors: <Color>[
                           Color(0xFF93B4D1),
                           Color(0xFFFFFFFF),
                          ]
                  )
                ),
              ),

              Positioned(
                top: 90,
                left: 75,
                child: Stack(
                  children: [Container(
                    width: 360,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: Offset(5,0)
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, 0)
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 0)
                        )
                      ]
                    ),
                   ),

                   Positioned(
                    top: 20,
                    left: 30,
                     child: Container(
                      width: 132,
                      height: 106,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        image: DecorationImage(image: AssetImage('assets/sarah.jpeg'),fit: BoxFit.cover)
                      ),
                     ),
                   ),

                   Positioned(
                    top: 100,
                    left: 140,
                    child: Icon(Icons.edit_calendar_outlined)
                  ),

                  Positioned(
                    top: 40,
                    right: 20,
                    child: Text('Dr.Sarah',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w800,fontFamily: 'InriaSerif'),)
                  )
                  ]
                ),
              ),

              Positioned(
                top: 260,
                left: 90,
                child: Container(
                  width: 340,
                  height: 340,
                  // decoration: BoxDecoration(
                  //   border: Border.all()
                  // ),

                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Visiting Time'),
                          SizedBox(width: 5,),
                          Icon(Icons.edit,size: 20,color: Colors.grey,)
                        ],
                      ),

                      SizedBox(height: 10,),

                       Row(
                        children: [
                          Text('Qualification'),
                          SizedBox(width: 5,),
                          // Icon(Icons.edit,size: 20,color: Colors.grey,)
                        ],
                      ),

                      SizedBox(height: 10,),


                       Row(
                        children: [
                          Text('Specialization'),
                          SizedBox(width: 5,),
                          // Icon(Icons.edit,size: 20,color: Colors.grey,)
                        ],
                      ),

                      SizedBox(height: 10,),


                       Row(
                        children: [
                          Text('Home Address'),
                          SizedBox(width: 5,),
                          Icon(Icons.edit,size: 20,color: Colors.grey,)
                        ],
                      ),

                      SizedBox(height: 10,),


                       Row(
                        children: [
                          Text('Office Address'),
                          SizedBox(width: 5,),
                          Icon(Icons.edit,size: 20,color: Colors.grey,)
                        ],
                      )
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
          )
        ],
      ),
    );
  }
}