import 'package:flutter/material.dart';

class BMenu extends StatefulWidget {
  const BMenu({super.key});

  @override
  State<BMenu> createState() => _BMenuState();
}

class _BMenuState extends State<BMenu> {
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
        child:Container(
          width: screenWidth,
          height: screenHeight,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: screenWidth-40,
                  height: 46,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Plan'),
                  ),
                ),
          
                SizedBox(height: 5,),
          
                Container(
                  width: screenWidth-40,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Mon'),
                              Text('1')
                            ],
                          ),
                        ),
                      ),
                  
                      Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Tue'),
                              Text('2')
                            ],
                          ),
                        ),
                      ),
                  
                      Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Wed'),
                              Text('3')
                            ],
                          ),
                        ),
                      ),
                  
                      Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Thur'),
                              Text('4')
                            ],
                          ),
                        ),
                      ),
                  
                      Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Fri'),
                              Text('5')
                            ],
                          ),
                        ),
                      ),
                  
                      Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Sat'),
                              Text('6')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          
                SizedBox(height: 5,),
          
                Container(
                  width: screenWidth-40,
                  height: 15,
                  child: Text('Jan 1 - Jan 7'),
                ),
          
                SizedBox(height: 5,),
          
                Container(
                  width: screenWidth-40,
                  height: 31,
                  color: Color(0xFFD9D9D9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Monday,Jan 1'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.edit),
                      )
                    ],
                  ),
                ),
          
                SizedBox(height: 15,),
          
                Column(
                  children: [
                    Container(
                      width: screenWidth-40,
                      height: 218,
          
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
                                    ]
                                  ),
                      child: Stack(
                        children: [
                          SizedBox(height: 10,),
          
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 20),
                            child: Container(
                              width: 260,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Breakfast'),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Mango Juice',style: TextStyle(fontSize: 12),),
                                      Text('Pancake',style: TextStyle(fontSize: 12),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
          
                          Positioned(
                            top: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                width: 260,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Lunch'),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Chicken Biriyani',style: TextStyle(fontSize: 12),),
                                        Text('Salad',style: TextStyle(fontSize: 12),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
          
                          Positioned(
                            top: 160,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                width: 260,
                                height: 40,
                                
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Evening Snack'),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Horlicks',style: TextStyle(fontSize: 12),),
                                        Text('Biscuit',style: TextStyle(fontSize: 12),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(Icons.edit)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
          
                SizedBox(height: 15,),
          
                Container(
                  width: screenWidth-40,
                  height: 31,
                  color: Color(0xFFD9D9D9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Tuesday,Jan 2'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.edit),
                      )
                    ],
                  ),
                ),
          
                SizedBox(height: 15,),
          
                Column(
                  children: [
                    Container(
                      width: screenWidth-40,
                      height: 218,
          
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
                                    ]
                                  ),
                      child: Stack(
                        children: [
                          SizedBox(height: 10,),
          
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 20),
                            child: Container(
                              width: 260,
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Breakfast'),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Mik',style: TextStyle(fontSize: 12),),
                                      Text('Bread Toast',style: TextStyle(fontSize: 12),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
          
                          Positioned(
                            top: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                width: 260,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Lunch'),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Curd Rice',style: TextStyle(fontSize: 12),),
                                        Text('Salad',style: TextStyle(fontSize: 12),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
          
                          Positioned(
                            top: 160,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Container(
                                width: 260,
                                height: 40,
                                
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Evening Snack'),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Boost',style: TextStyle(fontSize: 12),),
                                        Text('Banana',style: TextStyle(fontSize: 12),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(Icons.edit)
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ) 
      ),
    );
  }
}