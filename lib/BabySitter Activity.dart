import 'package:flutter/material.dart';

class Bactivity extends StatefulWidget {
  const Bactivity({super.key});

  @override
  State<Bactivity> createState() => _BactivityState();
}

class _BactivityState extends State<Bactivity> {
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

      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight+50,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50,),
            
                Container(
                  width: screenWidth-30,
                  height: 14,
                  child: Text('Students',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                ),
          
                SizedBox(height: 20,),
          
                Container(
                  width: screenWidth-30,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 50,
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/jenni.jpeg'),fit: BoxFit.cover,),
                            
                          ),
                        ),
                      ),
          
                      SizedBox(width: 30,),
          
                      Container(
                        width: 50,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(image: AssetImage('assets/alan.jpeg'),fit: BoxFit.cover,)
                        ),
                      ),
                    ],
                  ),
                ),
          
                SizedBox(height: 15,),
          
                Container(
                  width: screenWidth-30,
                  height: 40,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Text:  Today,2:55pm'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.edit,color: Colors.grey,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
          
                Container(
                  width: screenWidth-30,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Photos'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(Icons.close),
                      )
                    ],
                  ),
                ),

          
                SizedBox(height: 20,),
          
                Container(
                  width: screenWidth-30,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    
                    image: DecorationImage(image: AssetImage('assets/playing.jpeg',),fit: BoxFit.cover,),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  width: screenWidth-30,
                  height: 15,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Note',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),),
                  ),
                ),

                SizedBox(height: 15,),

                Container(
                  width: screenWidth-30,
                  height: 30,
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

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'They are playing together',
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.emoji_emotions_outlined,color: Colors.yellow,)
                    ],
                  ),
                ),
          
                SizedBox(height: 120,),
          
                SizedBox(
                  width: 267,
                  height: 36,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5C0B9C)
                    ),
                    onPressed: () {}, 
                    child: Text('Add Activity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white),)
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}