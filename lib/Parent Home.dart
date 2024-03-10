import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Category.dart';
import 'package:flutter_mini_project/Doctor.dart';
import 'package:flutter_mini_project/Food.dart';
import 'package:flutter_mini_project/Staff.dart';

class Phome extends StatefulWidget {
  const Phome({super.key});

  @override
  State<Phome> createState() => _PhomeState();
}

class _PhomeState extends State<Phome> {
  int indexNumber=0;
  List tabWidget =[
    Text("HOME",style: TextStyle(fontSize: 30),),
    Text("ACTIVITY",style: TextStyle(fontSize: 30),),
    Text("MY CHILD",style: TextStyle(fontSize: 30),),
    Text("PROFILE",style: TextStyle(fontSize: 30),),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.black),
        fixedColor: Colors.black,
        items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black,),
                label: "HOME",),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_rounded,color: Colors.black,),
                label: "ACTIVITY",),
            BottomNavigationBarItem(
                icon: Icon(Icons.child_care,color: Colors.black,),
                label: "MY CHILD",),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded,color: Colors.black,),
                label: "PROFILE",
                
                ),
          ],
          iconSize: 20,
          currentIndex: indexNumber,
          onTap: (int intex){
            setState(() {
              indexNumber=intex;
            });
          },
      ),
      body: Container(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [ 
                    Container(
                      width: screenWidth,
                      height: 152,
                      child: Image.asset('assets/children.png',)
                    ),

                    ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF85D0A3)
              ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Catogery()));
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

                Container(
                  width: 390,
                  height: 147,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                       Color(0xFFFEE77F),
                       Color(0xFFFFFFFF)
                      ]
                    )
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/food.png',width: 190,height: 137,),
                  
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Pfood()));
                        }, 
                        child: Text('FOOD',
                          style: TextStyle(
                            fontFamily: 'IrishGrover',
                            fontSize: 60,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFD38640)
                          ),
                        )
                      )
                    ],
                  ),
                ),

                Container(
                  width: 390,
                  height: 147,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                       Color(0xFFEE364A),
                       Color(0xFFF168DB)
                      ]
                    )
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/staff.png',width: 130,height: 70,),
                  
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Pstaff()));
                        }, 
                        child: Text('STAFFS',
                          style: TextStyle(
                            fontFamily: 'IrishGrover',
                            fontSize: 60,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE93A4C)
                          ),
                        )
                      )
                    ],
                  ),
                ),

                Container(
                  width: 390,
                  height: 147,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8, 1),
                      colors: <Color>[
                       Color(0xFF77A4CC),
                       Color(0xFFD9D9D9)
                      ]
                    )
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/doctor.png',width: 100,height: 137,),
                  
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Pdoctor()));
                        }, 
                        child: Text('DOCTORS',
                          style: TextStyle(
                            fontFamily: 'IrishGrover',
                            fontSize: 60,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF87ACCF)
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}