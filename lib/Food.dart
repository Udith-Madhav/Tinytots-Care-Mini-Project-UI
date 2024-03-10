import 'package:flutter/material.dart';

class Pfood extends StatefulWidget {
  const Pfood({super.key});

  @override
  State<Pfood> createState() => _PfoodState();
}

class _PfoodState extends State<Pfood> {
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
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: screenWidth,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1, 1),
                        colors: <Color>[
                           Color(0xFFFEE77F),
                           Color(0xFFFFFFFF)
                        ]
                      )
                    ),
                  ),
        
                  Positioned(
                    left: 210,
                    child: Container(
                      width: 67,
                      height: 75,
                      child: Image.asset('assets/mother.png'),
                    ),
                  ),
        
                  Positioned(
                    top: 70,
                    left: 80,
                    child:Container(
                      width: 239,
                      height: 137,
                      child: Image.asset('assets/food.png'),
                    ) 
                  ),
        
                  Positioned(
                    top: 85,
                    left: 230,
                    child: Text('FOOD',
                    style: TextStyle(
                      fontFamily: 'IrishGrover',
                      fontSize: 60,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFD38640)
                    ),
                    )
                  )
                ],
              ),
        
              SizedBox(height: 28,),
        
              Container(
                width: 324,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 127,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('filter',style: TextStyle(fontFamily: 'IrishGrover',fontWeight: FontWeight.w400,fontSize: 16),),
                          Icon(Icons.filter_alt_outlined)
                        ],
                      ),
                    ),
        
                    Container(
                      width: 127,
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('search',style: TextStyle(fontFamily: 'IrishGrover',fontWeight: FontWeight.w400,fontSize: 16),),
                          Icon(Icons.search)
                        ],
                      ),
                    )
                  ],
                ),
              ),
        
              SizedBox(height: 15,),
        
              Stack(
                children: [
                  Container(
                    width: 324,
                    height: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1, 1),
                        colors: <Color>[
                         Color(0xFFE7D7CC),
                         Color(0xFFFAFFFE)
                        ]
                      )
                    ),
                  ),
        
                  Positioned(
                    top: 35,
                    left: 5,
                    child: Container(
                      width: 188,
                      height: 79,
                      child: Image.asset('assets/rice.png'),
                    ),
                  ),
        
                  Positioned(
                    left: 160,
                    top: 40,
                    child: Text('Rice Poridge',style: TextStyle(fontFamily: 'IrishGrover',fontSize: 25,fontWeight: FontWeight.w400),)
                  ),
        
                  Positioned(
                    left: 250,
                    top: 70,
                    child: Text('Free/-',style: TextStyle(fontFamily: 'IrishGrover',fontSize: 25,fontWeight: FontWeight.w400),)
                  ),
                ],
              ),
        
              SizedBox(height: 5,),
        
              Stack(
                children: [
                  Container(
                    width: 324,
                    height: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1, 1),
                        colors: <Color>[
                         Color(0xFFE7D7CC),
                         Color(0xFFFAFFFE)
                        ]
                      )
                    ),
                  ),
        
                  Positioned(
                    top: 0,
                    left: 5,
                    child: Container(
                      width: 206,
                      height: 140,
                      child: Image.asset('assets/biriyani.png'),
                    ),
                  ),
        
                  Positioned(
                    left: 180,
                    top: 40,
                    child: Text('Biriyani',style: TextStyle(fontFamily: 'IrishGrover',fontSize: 25,fontWeight: FontWeight.w400),)
                  ),
        
                  Positioned(
                    left: 220,
                    top: 70,
                    child: Text('100/-',style: TextStyle(fontFamily: 'IrishGrover',fontSize: 25,fontWeight: FontWeight.w400),)
                  ),
                ],
              ),
        
              SizedBox(height: 5,),
        
              Stack(
                children: [
                  Container(
                    width: 324,
                    height: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1, 1),
                        colors: <Color>[
                         Color(0xFFE7D7CC),
                         Color(0xFFFAFFFE)
                        ]
                      )
                    ),
                  ),
        
                  Positioned(
                    top: 0,
                    left: 5,
                    child: Container(
                      width: 302,
                      height: 171,
                      child: Image.asset('assets/fruits.png'),
                    ),
                  ),
        
                  Positioned(
                    right: 10,
                    bottom: 30,
                    child: Text('Fruits',style: TextStyle(fontFamily: 'IrishGrover',fontSize: 25,fontWeight: FontWeight.w400),)
                  ),
        
                  Positioned(
                    right: 5,
                    bottom: 10,
                    child: Text('20/-',style: TextStyle(fontFamily: 'IrishGrover',fontSize: 25,fontWeight: FontWeight.w400),)
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}