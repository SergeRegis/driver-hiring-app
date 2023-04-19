import 'package:firebase_auth101/screen/driver_login.dart';
import 'package:firebase_auth101/screen/home_screen.dart';
import 'package:firebase_auth101/screen/login_screen.dart';
import 'package:firebase_auth101/screen/signup_screen.dart';
import 'package:firebase_auth101/screen/welcome_home_screen.dart';
import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        
        height: MediaQuery.of(context).size.height,
        width:  double.infinity,
        
        decoration: const BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.fitWidth,
            
            
          ),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const SizedBox(
            //   height: 130,
            //   width: 180,
            //   child: Image(image: AssetImage('assets/logo.png',),
              
            //   fit: BoxFit.cover,
            //   ),
            //   ),

            //   const SizedBox(height: 20,),
            
             CustomizeButton(
                buttonText: 'Login',
                buttonColor: Color.fromRGBO(76, 175, 80, 1),
                
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> const  LoginScreen()));
                
                },
              ),
              CustomizeButton(
                buttonText: 'Register',
                buttonColor: Color.fromRGBO(76, 175, 80, 1),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> const LoginScreen()));
                
              
                },
              ),

              CustomizeButton(
                buttonText: 'Continue as Guest',
                buttonColor: Color.fromRGBO(76, 175, 80, 1),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> const HomeScreen()));
                
              
                },
              ),
              const SizedBox(
                height: 30,
              ),

              // const Padding(
              //   padding: EdgeInsets.all(10.0),
              //   child: Text("Continue as Guest", style: TextStyle(color: Color(0xff35c2c1), fontSize: 20),
              //   ),
              // ), 
          ],
        )
        ),
    );
  }
}

