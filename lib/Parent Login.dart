import 'package:flutter/material.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Address'),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'Address',
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
                  Text('Pin Code'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Pin Code'
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
                  Text('Phone Number'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Phone Number'
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
                  Text('Whatsapp'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Whatsapp'
                        ),
                  ),
                ],
              ),
            ),

            Container(
              width: 300,
              height: 110,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                
                    SizedBox(
                      width: 82,
                      height: 48,
                      child: ElevatedButton(
                          onPressed: () {}, 
                          child: Text('Next',style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            backgroundColor: Colors.blue
                          ),
                        ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}