import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';

class AdminPerent2 extends StatefulWidget {
  const AdminPerent2({super.key});

  @override
  State<AdminPerent2> createState() => _AdminPerent2State();
}

class _AdminPerent2State extends State<AdminPerent2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight,
                ),

                Positioned(
                    top: 25,
                    left: 40,
                    child: Container(
                      width: 67,
                      height: 77,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        image: DecorationImage(image: AssetImage('assets/aswathi.jpeg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),

                  Positioned(
                    top: 35,
                    left: 140,
                    child: Container(
                      width: 90,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Aswathi',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                          Text('Female',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 85,
                    left: 85,
                    child: Icon(Icons.edit_calendar_outlined)
                  ),

                  Positioned(
                    left: 70,
                    top: 120,
                    child: Container(
                      width: 360,
                      height: 250,
                      // decoration: BoxDecoration(
                      //   border: Border.all(),
                      // ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Address"),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.edit,color: Colors.grey,size: 20,)
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Text("Qualification"),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.add,color: Colors.grey,size: 20,)
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Text("Date of Birth"),
                              SizedBox(width: 10,),
                              SizedBox(
                                width: 120,
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                  ),
                                ),
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Text("Experience"),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.edit,color: Colors.grey,size: 20,)
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Text("Id Proof Number"),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.edit,color: Colors.grey,size: 20,)
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Text("Blood Group"),
                              SizedBox(width: 10,),
                              IconButton(
                                onPressed: () {}, 
                                icon: Icon(Icons.edit,color: Colors.grey,size: 20,)
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 400,
                    left: 70,
                    child: Stack(
                      children: [Container(
                        width: 360,
                        height: 250,
                        // decoration: BoxDecoration(
                        //   border: Border.all()
                        // ),
                      ),
                      
                      Text('Child',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,),),

                      Positioned(
                    top: 45,
                    child: Container(
                      width: 89,
                      height: 68,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/jenni.jpeg'),fit: BoxFit.cover)
                      ),
                    ),
                  ),

                  Positioned(
                    top: 45,
                    left: 110,
                    child: Container(
                      width: 90,
                      height: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Jeni',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                          Text('Female',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'InriaSerif'),),
                        ],
                      ),
                    ),
                  ),

                   Positioned(
                    top: 90,
                    left: 75,
                    child: Icon(Icons.edit_calendar_outlined)
                  ),

                  Positioned(
                    top: 120,
                    child: Container(
                      width: 360,
                      height: 80,
                      // decoration: BoxDecoration(
                      //   border: Border.all()
                      // ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Date of birth'),
                              SizedBox(width: 10,),
                              SizedBox(
                                width: 120,
                                height: 40,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder()
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 10,),

                          Text('Blood Group')
                        ],
                      ),
                    ),
                  )
                  ]
                    ),
                  ),
                  

                  Positioned(
              bottom: 10,
              left: 240,
              child: Container(
                width: 45,
                height: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Adcatogery()));
                      }, 
                      icon: Icon(Icons.home)
                    ),
                    Text('HOME',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
            )
              ],
            ),
          )
        ],
      ),
    );
  }
}