import 'package:flutter/material.dart';
import 'package:flutter_mini_project/PLogin.dart';

class ParentSecond extends StatefulWidget {
  const ParentSecond({super.key});

  @override
  State<ParentSecond> createState() => _ParentSecondState();
}

class _ParentSecondState extends State<ParentSecond> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              child: Container(
                width: screenWidth,
                height: 90,
                color: Color(0xFF387F8E),
                child: Row(
                  children: [
                    Container(
                      width: 67,
                      height: 75,
                      child: Image.asset('assets/mother.png',),
                    ),
              
                    SizedBox(width: 80,),
              
                    Center(
                      child: Container(
                        width: 200,
                        height: 38,
                        child: Text('TinyTots Care',
                        style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w100,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Email'
                        ),
                  )
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date of Birth'),

                  SizedBox(
                    width: 190,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: () async{
                            DateTime? datepick=await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                               firstDate: DateTime(2000),
                              lastDate: DateTime(2030),
                            );
                            if(datepick != null){
                              print(datepick);
                            }
                          }, 
                          icon: Icon(Icons.calendar_month_outlined,size: 15,),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    ),
                  )
                ]
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Blood Group'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Blood Group'
                        ),
                  )
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Occupation'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Occupation'
                        ),
                  )
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Photo'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Photo'
                        ),
                  )
                ],
              ),
            ),

            Divider(indent: 50,endIndent: 50,),

            Container(
              width: 300,
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Child Details',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w200
                  ),
                  ),
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Photo'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Photo'
                        ),
                  )
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Name'
                        ),
                  )
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date of Birth'),

                  SizedBox(
                    width: 190,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffix: IconButton(
                          onPressed: () async{
                            DateTime? datepick=await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                               firstDate: DateTime(2000),
                              lastDate: DateTime(2030),
                            );
                            if(datepick != null){
                              print(datepick);
                            }
                          }, 
                          icon: Icon(Icons.calendar_month_outlined,size: 15,),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    ),
                  )
                ]
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Blood Group'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Blood Ground'
                        ),
                  )
                ],
              ),
            ),

            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5E5BFF)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              }, 
              child: Text('Submit',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.white
              ),
              )
            ),

            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}