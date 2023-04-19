import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/screen/forgot_password.dart';
import 'package:firebase_auth101/screen/home_screen.dart';
import 'package:firebase_auth101/screen/signup_screen.dart';
import 'package:firebase_auth101/services/firebase_auth_service.dart';
import 'package:firebase_auth101/widgets/customized_button.dart';
import 'package:firebase_auth101/widgets/customized_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: sized_box_for_whitespace
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
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
                  child: Text(
                    "Welcome Back! Glad \nto see you again",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),

                CustomizedTextfield(
                  myController: _emailController,
                  hintText: 'Enter your Email',
                  isPassword: false,
                ),
                CustomizedTextfield(
                  myController: _passwordController,
                  hintText: 'Enter your Password',
                  isPassword: true,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      }),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Color(0xff6A707C),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),

                CustomizeButton(
                  buttonText: 'Login',
                  buttonColor: Color.fromRGBO(76, 175, 80, 1),
                  textColor: Colors.white,
                  onPressed: () async {
                    try {
                      await FirebaseAuthService().login(
                          _emailController.text.trim(),
                          _passwordController.text.trim());

                      if (FirebaseAuth.instance.currentUser != null) {
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      }
                    } on FirebaseException catch (e) {
                      debugPrint("error is ${e.message}");

                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                  title: const Text(
                                      " Invalid Username or password. Please register again or make sure that username and password is correct"),
                                  actions: [
                                    ElevatedButton(
                                      child: const Text("Register Now"),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUpScreen()));
                                      },
                                    )
                                  ]));
                    }
                  },
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.height * 0.25,
                        color: Colors.grey,
                      ),
                      const Text("OR Login With"),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.height * 0.18,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: IconButton(
                            icon: const Icon(FontAwesomeIcons.facebookF),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              // color: Colors.black,
                              width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            FontAwesomeIcons.google,
                            // color: Colors.red,
                          ),
                          onPressed: () async {
                            await FirebaseAuthService().logininwithgoogle();

                            if (FirebaseAuth.instance.currentUser != null) {
                              if (!mounted) return;

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            } else {
                              throw Exception("Error");
                            }
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: IconButton(
                            icon: const Icon(
                              FontAwesomeIcons.apple,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(48, 8, 8, 8.0),
                  child: Row(
                    children: [
                      const Text("Dont have an account?",
                          style: TextStyle(
                            color: Color(0xff1E232C),
                            fontSize: 20,
                          )),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SignUpScreen()));
                        },
                        child: const Text("Register",
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
