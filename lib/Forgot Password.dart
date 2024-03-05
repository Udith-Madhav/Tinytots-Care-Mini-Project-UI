import 'package:flutter/material.dart';
import 'package:flutter_mini_project/Login.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey =GlobalKey<FormState>();
  final _formkey2 =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                      Text('New Password'),
                
                      SizedBox(height: 5,),
                
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Please Enter New Password';
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
                      Text('Conform Password'),
                
                      SizedBox(height: 5,),
                
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "Enter the Password";
                          }
                          else if(value != value){
                            return 'Enter the same password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),


              SizedBox(height: 30,),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    }
                  },
                 child: Text('Done',style: TextStyle(color: Colors.black),)),
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}