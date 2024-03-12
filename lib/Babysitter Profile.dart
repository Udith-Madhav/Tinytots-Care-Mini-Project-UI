import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Bbaysitter%20Home.dart';

class Bprofile extends StatefulWidget {
  const Bprofile({super.key});

  @override
  State<Bprofile> createState() => _BprofileState();
}

class _BprofileState extends State<Bprofile> {
  int indexNumber=0;
  List tabWidget =[
    Bhome(),
    Bprofile(),
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

      body: Center(
        child: Column(
          children: [
            Stack(
              children: [

                Container(
                  width: screenWidth-40,
                  height: 100,
                ),

                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    width: 65,
                    height: 79,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(image: AssetImage('assets/diana.jpeg'),fit: BoxFit.cover),
                    ),
                  ),
                ),

                Positioned(
                  top: 25,
                  left: 70,
                  child: Text('Dayana',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),)
                ),

                Positioned(
                  top: 45,
                  left: 70,
                  child: Text('Female',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),)
                )

              ],
            ),

            SizedBox(height: 30,),

            Container(
              width: screenWidth-80,
              height: 25,
              child: Row(
                children: [
                  Text('Address',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,)),
                  SizedBox(width: 10,),
                  Icon(Icons.edit,color: Colors.grey,size: 20,)
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: screenWidth-80,
              height: 25,
              child: Row(
                children: [
                  Text('Occupation',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,)),
                  SizedBox(width: 10,),
                  Icon(Icons.edit,color: Colors.grey,size: 20,)
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: screenWidth-80,
              height: 25,
              child: Row(
                children: [
                  Text('Phone Number',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,)),
                  SizedBox(width: 10,),
                  Icon(Icons.edit,color: Colors.grey,size: 20,)
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              width: screenWidth-80,
              height: 25,
              child: Row(
                children: [
                  Text('Whatsapp Number',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,)),
                  SizedBox(width: 10,),
                  Icon(Icons.edit,color: Colors.grey,size: 20,)
                ],
              ),
            ),

            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}