import 'package:flutter/material.dart';
import 'package:flutter_mini_project/BLogin.dart';

class BsitterLogin extends StatefulWidget {
  const BsitterLogin({super.key});

  @override
  State<BsitterLogin> createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<BsitterLogin> {
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
                  Text('Experience'),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: 'Exerience',
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
                  Text('Id Proof'),

                  TextFormField(
                    decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Id proof'
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

            

            SizedBox(height: 30,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF5E5BFF)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Slogin()));
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