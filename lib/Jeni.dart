import 'package:flutter/material.dart';

class ChildJeni extends StatefulWidget {
  const ChildJeni({super.key});

  @override
  State<ChildJeni> createState() => _ChildJeniState();
}

class _ChildJeniState extends State<ChildJeni> {
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

      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: screenWidth-40,
                  height: 65,
                ),
        
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    width: 79,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(image: AssetImage('assets/jenni.jpeg'),fit: BoxFit.cover),
                    ),
                  ),
                ),

                Positioned(
                  top: 8,
                  left: 105,
                  child: Text('Jeni',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),)
                ),

                Positioned(
                  top: 27,
                  left: 90,
                  child: Text('Female',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),)
                )
              ],
            ),

            SizedBox(height: 35,),

            Container(
              width: screenWidth-40,
              height: 25,
              child: Text('Daily Task',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif')),
            ),

            SizedBox(height: 25,),

            Stack(
              children: [
                Container(
                  width: screenWidth-40,
                  height: 48,
                  decoration: BoxDecoration(
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
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {}, 
                    child: Text('Upload',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'))
                                ),
                )
              ],
            ),

            SizedBox(height: 10,),

            Stack(
              children: [
                Container(
                  width: screenWidth-40,
                  height: 48,
                  decoration: BoxDecoration(
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
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {}, 
                    child: Text('Upload',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'))
                                ),
                )
              ],
            ),

            SizedBox(height: 10,),

            Stack(
              children: [
                Container(
                  width: screenWidth-40,
                  height: 48,
                  decoration: BoxDecoration(
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
                  top: 10,
                  right: 10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {}, 
                    child: Text('Upload',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'))
                                ),
                )
              ],
            ),

            SizedBox(height: 30,),

            Container(
              width: screenWidth-40,
              height: 25,
              child: Text('Health',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif')),
            ),

            SizedBox(height: 40,),

            Stack(
              children: [
                Container(
                  width: screenWidth-40,
                  height: 48,
                  decoration: BoxDecoration(
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
                  top: 12,
                  right: 10,
                  child:Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}