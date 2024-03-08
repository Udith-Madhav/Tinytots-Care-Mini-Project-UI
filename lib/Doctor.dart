import 'package:flutter/material.dart';
import 'package:flutter_mini_project/DBooking.dart';
import 'package:flutter_mini_project/Dbooking2.dart';

class Pdoctor extends StatefulWidget {
  const Pdoctor({super.key});

  @override
  State<Pdoctor> createState() => _PdoctorState();
}

class _PdoctorState extends State<Pdoctor> {
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
          // mainAxisAlignment: MainAxisAlignment.center,
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
                       Color(0xFF77A4CC),
                       Color(0xFFD9D9D9)
                      ]
                    )
                  ),
              child: Center(
                child: Column(
                  
                  children: [
                    Image.asset('assets/mother.png',width: 67,height: 75,),
                    Row(
                      children: [
                        Image.asset('assets/doctor.png',width: 129,height: 117,),
                        Text('DOCTORS',
                            style: TextStyle(
                              fontFamily: 'IrishGrover',
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF87ACCF)
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 5,),

            SizedBox(
              width: 360,
              height: 52,
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: Color(0xFFD9D9D9),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  ),
                  hintText: 'Search',
                  helperStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    fontFamily: 'InriaSerif'
                  )
                ),
              ),
            ),

            SizedBox(height: 10,),
            
            Container(
              width: 326,
              height: 187,
              // margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                  )
                ]
              ),

              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 122,
                        height: 96,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/sarah.jpeg'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(400),
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      
                      Container(
                        width: 155,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 85,
                              height: 22,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF468FD0)
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dbooking()));
                                }, 
                                child: Text('Booking',style: TextStyle(color: Colors.black,fontSize: 10),)
                              ),
                            ),
                  
                            SizedBox(
                        width: 66,
                        height: 22,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF468FD0)
                          ),
                          onPressed: () {}, 
                          child: Text('Call',style: TextStyle(color: Colors.black,fontSize: 10),)
                        ),
                      )
                          ],
                        ),
                      ),
                      
                    ],
                  ),

                  SizedBox(width: 5,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr.Sarah',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                      Text('Pediatrician',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Row(
                        children: [
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                        ],
                      ),
                      Text('Tirur City Hospital',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Text('Trikkandiyoor Road',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Text('near Bus stand',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Text('04563218953',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),)
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              width: 326,
              height: 187,
              // margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                  )
                ]
              ),

              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 83,
                        height: 96,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/antony.png'),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(400),
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                      
                      Container(
                        width: 155,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 85,
                              height: 22,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF468FD0)
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dbooking2()));
                                }, 
                                child: Text('Booking',style: TextStyle(color: Colors.black,fontSize: 10),)
                              ),
                            ),
                  
                            SizedBox(
                        width: 66,
                        height: 22,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF468FD0)
                          ),
                          onPressed: () {}, 
                          child: Text('Call',style: TextStyle(color: Colors.black,fontSize: 10),)
                        ),
                      )
                          ],
                        ),
                      ),
                      
                    ],
                  ),

                  SizedBox(width: 5,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr.Antony',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Inter'),),
                      Text('Pediatrician',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Row(
                        children: [
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star,color: Color(0xFFF1C644),),
                          Icon(Icons.star_border,color: Color(0xFFF1C644),),
                        ],
                      ),
                      Text('M.B Hospital',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Text('malappuram',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                      Text('04832345678',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),),
                    ],
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