import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Bbaysitter%20Home.dart';
import 'package:flutter_mini_project/Category.dart';

class Slogin extends StatefulWidget {
  const Slogin({super.key});

  @override
  State<Slogin> createState() => _SloginState();
}

class _SloginState extends State<Slogin> {
  final _formKey =GlobalKey<FormState>();
  final _formkey2 =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 120,
                height: 120,
                child: Image.asset('assets/mother.png'),
              ),

              SizedBox(height: 15,),

              Form(
                key: _formKey,
                child: Container(
                  width: 300,
                  height: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email'),
                
                      SizedBox(height: 5,),
                
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter an Email Address';
                          }
                          else if(!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)){
                            return 'Please Enter Valid Email Address';
                          }
                          return null;
                        },
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
              ),

              SizedBox(height: 20,),

              Form(
                key: _formkey2,
                child: Container(
                  width: 300,
                  height: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password'),
                
                      SizedBox(height: 5,),
                
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter the Password";
                          }
                          else if(value.length<8){
                            return 'Password must be atleast 8 characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Password'
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Container(
                width: 300,
                // height: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Password()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ), 
                    child:Text('Forgot Password?')),
                  ],
                )
              ),

              SizedBox(height: 40,),

              SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate() && _formkey2.currentState!.validate() ){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bhome()));
                    }
                  },
                 child: Text('Login',style: TextStyle(color: Colors.black),)),
              ),

              SizedBox(height: 25,),

              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Catogery()));
              },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ), 
                    child:Text('Create Account?')),
            ],
          ),
        ),
      ),
    );
  }
}