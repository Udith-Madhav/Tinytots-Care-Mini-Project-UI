import 'package:flutter/material.dart';

class Pstaff extends StatefulWidget {
  const Pstaff({super.key});

  @override
  State<Pstaff> createState() => _PstaffState();
}

class _PstaffState extends State<Pstaff> {
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
          children: [
            Container(
              width: screenWidth,
              height: 200,
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1, 1),
                      colors: <Color>[
                       Color(0xFFEE364A),
                       Color(0xFFF168DB)
                      ]
                    )
                  ),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/mother.png',width: 67,height: 75,),
                    Row(
                      children: [
                        Image.asset('assets/staff.png',width: 172,height: 75,),
                        Text('STAFFS',
                            style: TextStyle(
                              fontFamily: 'IrishGrover',
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFE93A4C)
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: 390,
              height: 78,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 45,
                    height: 59,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/diana.jpeg'),fit: BoxFit.cover),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50),bottom: Radius.circular(50))
                    ),
                    // child: Image.asset('assets/diana.jpeg',fit: BoxFit.fitHeight,),
                  ),

                  Container(
                    width: 125,
                    height: 44,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name  : Dayana C",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                        Text("Phone : 1234567",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                      ],
                    )
                  ),
                  

                  Container(
                    width: 43,
                    height: 44,
                    child: Icon(Icons.call,)
                  )
                ],
              ),
            ),

            SizedBox(height: 10,),

            Container(
              width: 390,
              height: 78,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 45,
                    height: 59,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/kiran.jpeg'),fit: BoxFit.cover),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(50),bottom: Radius.circular(50))
                    ),
                    // child: Image.asset('assets/diana.jpeg',fit: BoxFit.fit,),
                  ),

                  Container(
                    width: 120,
                    height: 44,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name  : Kiran S",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                        Text("Phone : 9876599",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                      ],
                    )
                  ),
                  

                  Container(
                    width: 43,
                    height: 44,
                    child: Icon(Icons.call,)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}