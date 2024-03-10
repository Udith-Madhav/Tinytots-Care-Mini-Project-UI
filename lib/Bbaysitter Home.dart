import 'package:flutter/material.dart';
import 'package:flutter_mini_project/BabySitter%20Activity.dart';
import 'package:flutter_mini_project/Babysitter%20Menu.dart';
import 'package:flutter_mini_project/My%20Children.dart';

class Bhome extends StatefulWidget {
  const Bhome({super.key});

  @override
  State<Bhome> createState() => _BhomeState();
}

class _BhomeState extends State<Bhome> {
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
          Stack(
            children: [
              Container(
                width: screenWidth,
                height: 408,
                child: Image.asset('assets/teacher&kids.jpeg'),
              ),

              Positioned(
                right: 10,
                top: 10,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 136, 161, 204)
                ),
                onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Adlogin()));
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
                            ),
              )
            ],
          ),

          SizedBox(height: 10,),

          Container(
            width: screenWidth-40,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 132,
                  height: 83,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xFF5FD5EF),
                    boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(5,0)
                    ),
                    BoxShadow(
                      color: Color(0xFF5FD5EF),
                      offset: Offset(-5, 0)
                    ),
                  ]
                  ),

                  child: TextButton(
                    style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BMenu()));
                    }, 
                    child: Text('Menu',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,fontFamily: 'InriaSerif',color: Colors.black),)
                  ),
                ),

                Container(
                  width: 132,
                  height: 83,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xFFD38640),
                    boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(5,0)
                    ),
                    BoxShadow(
                      color: Color(0xFFD38640),
                      offset: Offset(-5, 0)
                    ),
                  ]
                  ),

                  child: TextButton(
                    style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bactivity()));
                    }, 
                    child: Text('Activity',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,fontFamily: 'InriaSerif',color: Colors.white),)
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 50,),

          Container(
                  width: 132,
                  height: 83,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xFFBE40D3),
                    boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(5,0)
                    ),
                    BoxShadow(
                      color: Color(0xFFBE40D3),
                      offset: Offset(-5, 0)
                    ),
                  ]
                  ),

                  child: TextButton(
                    style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mychildren()));
                    }, 
                    child: Text('My Children',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,fontFamily: 'InriaSerif',color: Color.fromARGB(255, 119, 1, 137)),)
                  ),
                ),
        ],
      ),
    );
  }
}