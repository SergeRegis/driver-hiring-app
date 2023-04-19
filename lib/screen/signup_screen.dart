import 'package:firebase_auth101/screen/driver_login.dart';
import 'package:firebase_auth101/screen/login_screen.dart';
import 'package:firebase_auth101/services/firebase_auth_service.dart';
import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:firebase_auth101/widgets/customized_textfield.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
  
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        // ignore: sized_box_for_whitespace
        body: Container(
          height: MediaQuery.of(context).size.height,
          width:  double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 30,
                    width: 30,
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
                  padding: EdgeInsets.all(8.0),
                  child: Text("Welcome Back! Glad \nto see you again", style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.black),
                  ),
                ),
          
              CustomizedTextfield(
                  myController: _usernameController,
                  hintText: "Username",
                  isPassword: false,
                ),
                CustomizedTextfield(
                  myController: _emailController,
                  hintText: "Email",
                  isPassword: false,
                ),
                CustomizedTextfield(
                  myController: _passwordController,
                  hintText: "Password",
                  isPassword: true,
                ),
                CustomizedTextfield(
                  myController: _confirmPasswordController,
                  hintText: "Confirm Password",
                  isPassword: true,
                ),
                  
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text("Forgot Password?", 
                      style: TextStyle(
                      color: Color(0xff6A707C), 
                      fontSize: 20,),
                      
                      ),
                    ),
                  ),
          
                  CustomizeButton(
                   buttonText: 'Register',
                   buttonColor: Color.fromRGBO(76, 175, 80, 1),
                   textColor: Colors.white,
                   onPressed: () async{
                     try {
                      await FirebaseAuthService().signup(
                       _emailController.text.trim(),
                       _passwordController.text.trim());
          
                       // ignore: use_build_context_synchronously
                       Navigator.push(context, 
                       MaterialPageRoute(builder: (context) => const DriverLogin())); 
                      
          
                     } on FirebaseException catch (e) {
                       print(e.message);
                     }
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (_)=> const  LoginScreen()));
                  
                  },
                ),
          
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Row(
                //     children: [
                //       Container(
                //         height: 1,
                //         width: MediaQuery.of(context).size.height*0.25,
                //         color: Colors.grey,
          
                //         ),
                //         Text("OR Login With"),
                //         Container(
                //         height: 1,
                //         width: MediaQuery.of(context).size.height*0.18,
                //         color: Colors.grey, 
                      
              
                //           ),
                      
                //     ],
                //   ),
                // ),
          
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       Container(
                //         height: 50,
                //         width: 50,
                //         decoration: BoxDecoration(
                //           border: Border.all(
                //             color: Colors.black, 
                //             width: 1), 
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //        ),
                //         child: IconButton(
                //           icon: Icon(FontAwesomeIcons.facebookF), 
                //           onPressed: () {
                //           Navigator.pop(context);
                        
                //         }),
                    
                //       ),
          
                //        Container(
                //         height: 50,
                //         width: 50,
                //         decoration: BoxDecoration(
                //           border: Border.all(
                //             // color: Colors.black, 
                //             width: 1), 
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //        ),
                       
                //           child: IconButton(
                //           icon: Icon(FontAwesomeIcons.google, 
                //           // color: Colors.red,
                //           ), 
                //           onPressed: () {
                //           Navigator.pop(context);
                      
                //         }),
                    
                //       ),
          
                //        Container(
                //         height: 50,
                //         width: 50,
                //         decoration: BoxDecoration(
                //           border: Border.all(
                //             color: Colors.black, 
                //             width: 1), 
                //           borderRadius: BorderRadius.all(Radius.circular(10)),
                //        ),
          
                //           child: IconButton(
                //           icon: Icon(FontAwesomeIcons.apple, 
                //           // color: Colors.black,
                //           ), 
                //           onPressed: () {
                //           Navigator.pop(context);
                        
                //         }),
                    
                //       ),
                      
                //     ],
                //   ),
                // ),
          
                // SizedBox(
                //   height: 30,
                
                // ),
          
                     Padding(
                  padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Already have an account?",
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
                        child: const Text("  Login Now",
                            style: TextStyle(
                              color: Color.fromRGBO(76, 175, 80, 1),
                              fontSize: 20,
                            )),
                      ),
                    ],
                  ),
                )
          
                // const Align(
                //   alignment: Alignment.center,
                //   child: Padding(
                //     padding:  EdgeInsets.all(8.0),
                //     child: Text("Don't have an account? Sign Up", 
                //     style: TextStyle(
                //     color: Color(0xff6A707C), 
                //     fontSize: 20,),
                    
                //     ),
                //   ),
                // ),
                  
                  
              
              ],
            ),
          ),
          
    
      ),
      ),
    );
  }
}