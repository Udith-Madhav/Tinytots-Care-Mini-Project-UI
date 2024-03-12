import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Admin%20Catogery.dart';
import 'package:flutter_mini_project/Admin%20Login.dart';
import 'package:flutter_mini_project/Main%20Login.dart';
import 'package:flutter_mini_project/PLogin.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  bool showButton =false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      // appBar: AppBar(
      //   actions: [Icon(Icons.more_vert)]
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                width:screenWidth ,
                height: screenHeight,
                child: Image.asset('assets/front.png',fit: BoxFit.fill,),
                ),

                Center(child: Image.asset('assets/mother.png',width: 120 ,height: 120,)),

                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: Center(
                    child: Text('TinyTots Care',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w400,
                        fontFamily: "IngridDarling",
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 390),
                  child: Center(
                    child: SizedBox(
                      width: 250,
  
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)
                          ),
                          backgroundColor: Colors.transparent,
                          foregroundColor: Colors.black,

                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainLogin()));
                        }, 
                        child: Text('Start',style: 
                        TextStyle(
                          fontFamily: "Fruktur",
                          fontSize: 45,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),)
                        ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showButton=true;
                        });
                      },
                      icon: Icon(Icons.more_vert)
                    ),
                    if(showButton)
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFC4C4C4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.black)
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Adlogin()));
                      }, 
                      child: Text('Admin',
                      style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),
                      )
                    )
                  ],
                )
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}