import 'package:firebase_auth101/screen/driver_login.dart';
import 'package:firebase_auth101/screen/login_screen.dart';
import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:firebase_auth101/widgets/customized_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: sized_box_for_whitespace
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black, 
                      width: 1), 
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_sharp), 
                    onPressed: () {
                    Navigator.pop(context);
                  
                  }),
                ),
              ),

             const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Forgot Password ?", style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Colors.black),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Please enter your email address. You will receive a link to create a new password via email.", style: TextStyle(
                fontSize: 15, 
                fontWeight: FontWeight.bold, 
                color: Color(0xff7F7F7F)
                  ),
                 ), 
                ),
              
              CustomizedTextfield(
                myController:  _emailController,
                hintText: 'Enter your Email',
                isPassword: false,
                ),

              CustomizeButton(
                 buttonText: 'Send Code',
                 buttonColor: Colors.black,
                 textColor: Colors.white,
                 onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> const  DriverLogin()));
                
                },
              ),
              const Spacer(
                flex: 1,
              ),
              
              Padding(
                    padding: const EdgeInsets.fromLTRB(68, 8, 8, 8.0),
                   child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Remember Password ?",
                        style: TextStyle(
                          color: Color(0xff1E232C),
                          fontSize: 20,
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DriverLogin()));
                      },
                      child: const Text("Login",
                          style: TextStyle(
                            color: Color(0xff35C2C1),
                            fontSize: 20,
                          )),
                    ),
                  ],
                ),
              )
            ],

            
          ),
        )
      ),
    );
  }
}