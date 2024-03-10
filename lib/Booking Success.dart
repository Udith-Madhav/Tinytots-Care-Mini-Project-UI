import 'package:flutter/material.dart';

class Sbooking extends StatefulWidget {
  const Sbooking({super.key});

  @override
  State<Sbooking> createState() => _SbookingState();
}

class _SbookingState extends State<Sbooking> {
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 80,),

              Container(
                width: 360,
                height: 40,
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.black)
                // ),
                child: Text('All done',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 25),),
              ),
          
              Container(
                width: 360,
                height: 50,
                child: Row(
                  children: [
                    Text('Booking Succesful',style: TextStyle(color: Color(0xFF93B5D2),fontWeight: FontWeight.w700,fontSize: 25),),
                    SizedBox(width: 5,),
                    Icon(Icons.verified_rounded,color:  Color(0xFF93B5D2),)
                  ],
                ),
              ),

              SizedBox(height: 30,),


              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF95B6D3)
                ),
                
                child: Container(
                  width: 100,
                  height: 80,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black)
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,),
                      Text("Dr.Sarah"),
                      Text("October/18/2023"),
                      Text("11:00am - 3:30pm"),
                
                      SizedBox(height: 10,),
                
                      SizedBox(
                        width: 180,
                        child: Divider()
                      ),
                
                      SizedBox(height: 10,),
                
                      Text("Parvathy"),
                      Text("3 year old"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}