import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Jeni.dart';

class Mychildren extends StatefulWidget {
  const Mychildren({super.key});

  @override
  State<Mychildren> createState() => _MychildrenState();
}

class _MychildrenState extends State<Mychildren> {
  int indexNumber=0;
  List tabWidget =[
    Text("HOME",style: TextStyle(fontSize: 30),),
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

      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: 60,
            child: Center(child: Text('My Children',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,fontFamily:'InriaSerif'),)),
          ),

          SizedBox(height: 20,),

          Stack(
            children: [
              Container(
                width: 328,
                height: 144,
                decoration: BoxDecoration(
                  color: Color(0xFFD7F03E),
                  borderRadius: BorderRadius.circular(50)
                ),
              ),

              Positioned(
                top: 35,
                left: 40,
                child: Container(
                  width: 60,
                  height: 72,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/jenni.jpeg'),fit: BoxFit.cover),
                
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),

              Positioned(
                top: 30,
                left: 120,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChildJeni()));
                  },
                  child: Text('Jeni',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                )
              ),

              Positioned(
                top: 65,
                left: 120,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChildJeni()));
                  },
                  child: Text('Female',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                )
              )
            ],
          ),

          SizedBox(height: 100,),

          Stack(
            children: [
              Container(
                width: 328,
                height: 144,
                decoration: BoxDecoration(
                  color: Color(0xFFF0BE3E),
                  borderRadius: BorderRadius.circular(50)
                ),
              ),

              Positioned(
                top: 45,
                left: 40,
                child: Container(
                  width: 72,
                  height: 49,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/alan.jpeg'),fit: BoxFit.cover),
                
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),

              Positioned(
                top: 25,
                left: 120,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: (){},
                  child: Text('Alan',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                )
              ),

              Positioned(
                top: 65,
                left: 120,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Text('Male',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}