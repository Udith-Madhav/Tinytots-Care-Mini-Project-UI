import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Booking%20Success.dart';

class Dbooking extends StatefulWidget {
  const Dbooking({super.key});

  @override
  State<Dbooking> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Dbooking> {
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

      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [Container(
              width: screenWidth,
              height: 116,
              decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1, 1),
                        colors: <Color>[
                         Color(0xFF93B4D1),
                         Color(0xFFFFFFFF),
                        ]
                      )
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/mother.png',width: 67,height: 75,),
                        Text('Booking',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)
                      ],
                    ),
            ),

            Positioned(
              top: 100,
              left: 100,
              child: Container(
                width: 312,
                height: 124,
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

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 112,
                        height: 96,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/sarah.jpeg'),fit: BoxFit.cover),
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(400)
                        ),
                        // child: Image.asset("assets/sarah.jpeg",fit: BoxFit.cover,),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Text("Dr.Sarah",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,fontFamily: 'GravitasOne'),),
                          Text("Visiting Time",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,)),
                          Text("11:30 am - 3:00 pm",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
            ]
          ),

          SizedBox(height: 120,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 312,
                height: 24,
                child: Text("Select a Date",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              ),
            ],
          ),

          SizedBox(height: 20,),

          Container(
            width: 287,
            height: 33,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Please Select Date'),
                Text('OK')
              ],
            ),
          ),
          Container(
            width: 287,
            height: 33,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('September'),
                Text('17'),
                Text('2022')
              ],
            ),
          ),
          Container(
            width: 287,
            height: 33,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('October'),
                Text(' 18'),
                Text('2023')
              ],
            ),
          ),
          Container(
            width: 287,
            height: 33,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('November'),
                Text('19'),
                Text('2024')
              ],
            ),
          ),

          SizedBox(height: 25,),

          SizedBox(
            width: 287,
            height: 40,
            child: TextFormField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                hintText: "Name:",
              ),
            )
          ),

          SizedBox(height: 15,),
          SizedBox(
            width: 287,
            height: 40,
            child: TextFormField(
              
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                hintText: "Age:",
              ),
            )
          ),

          SizedBox(height: 40,),

          SizedBox(
            width: 359,
            height: 34,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF98B7D3)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sbooking()));
              }, 
              child: Text('Book Appointment',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xFF000000)),)
            ),
          )
        ],
      ),
    );
  }
}