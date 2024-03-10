import 'package:flutter/material.dart';

class Maindoctor extends StatefulWidget {
  const Maindoctor({super.key});

  @override
  State<Maindoctor> createState() => _MaindoctorState();
}

class _MaindoctorState extends State<Maindoctor> {
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
            clipBehavior: Clip.none,
            children: [
              Container(
                width: screenWidth,
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  border: Border.all(color: Color.fromARGB(255, 184, 221, 228)),
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
                  mainAxisSize:MainAxisSize.min,
                  children: [
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
                  ],
                ), 
              ),
              ),
      
              Positioned(
                left: 210,
                child: Container(
                  width: 77,
                  height: 85,
                  child: Image.asset('assets/mother.png'),
                ),
              ),
      
              Positioned(
                top: 110,
                left: 90,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 322,
                      height: 134,
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
                      top: 15,
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
                      top: 30,
                      left: 140,
                      child: Text('Dr.Sarah',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'GravitasOne'),)
                    ),
      
                    Positioned(
                      top: 60,
                      left: 140,
                      child: Container(
                        width: 139,
                        height: 48,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Visiting Time',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                            Text('11:30pm - 3:00pm',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
      
          SizedBox(height: 180,),
      
          Stack(
            children: [
              Container(
                width: 333,
                height: 90,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))
                ),
              ),
      
              Positioned(
                left: 10,
                top: 15,
                child: Container(
                  width: 191,
                  height: 67,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: Jeni'),
                      Text('Date: October/12/12'),
                    ],
                  ),
                ),
              ),
      
              Positioned(
                right: 10,
                bottom: 3,
                child: Container(
                  width: 97,
                  height: 87,
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF98B7D3)
                        ),
                        onPressed: () {}, 
                        child: Text('Approve',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),)
                      ),
                
                      SizedBox(height: 5,),
                
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFF14668)
                        ),
                        onPressed: () {}, 
                        child: Text('Reject',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),)
                      ),
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