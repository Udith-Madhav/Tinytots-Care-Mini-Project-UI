import 'package:flutter/material.dart';
import 'package:flutter_mini_project/DLogin.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({super.key});

  @override
  State<DoctorLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
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
                  Text('Qualification'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Qualification'
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
                  Text('Specialization'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Specialization'
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
                  Text('Home Address'),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'Home Address',
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
                  Text('Office Address'),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'Office Address',
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
                  Text('Experiance'),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'Experiance',
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dlogin()));
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