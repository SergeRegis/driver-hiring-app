import 'package:firebase_auth101/screen/driver_homepage.dart';
import 'package:firebase_auth101/screen/driver_register.dart';
import 'package:firebase_auth101/screen/profile_screen.dart';
import 'package:firebase_auth101/screen/validate_driver_form.dart';
import 'package:flutter/material.dart';

class WelcomeHome extends StatelessWidget {
  const WelcomeHome({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
    return SafeArea(
    
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text("Welcome to", style: TextStyle(fontSize: 20, color: Colors.grey), textAlign: TextAlign.center,),
                  const SizedBox(height: 10,),
                  const Text("Mutware App", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  const Text("We are here to help you", style: TextStyle(fontSize: 20, color: Colors.grey),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: 
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return const DriverHomepage();
                        }));
                      },
                      child: const Text("Booking", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),

                    
                    
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: 
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return  ValidateDriverForm();
                        }));
                      },
                      child: const Text("Driver Register", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),

                    
                    
                  ),
                ],
              ),
              Container(
                height: height * 0.4,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                
                  image: DecorationImage(
                    image: AssetImage("assets/driver.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // children: <Widget>[
            // Card(
            //   elevation: 10,
            //   child: Container(  
            //     height: 150,
            //     width: 150,
            //     padding: const EdgeInsets.all(20),
            //     margin: const EdgeInsets.all(10),
            //     child: Column(
            //       children: <Widget> [
                    
            //         const Text("hire for", style: TextStyle(fontSize: 15), textAlign: TextAlign.center,),
            //         const Text("Personal", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            //         ButtonBar(
            //           children: <Widget> [
            //             ElevatedButton(
            //               onPressed: () {},
            //               child: Text("Hire Now"),
            //             ),
            //           ],
                    
            //         ),
            //       ],
            //     ),
    
            //   ),
            // ),
            
            // Card(
            //   elevation: 10,
            //   child: Container(  
            //     height: 150,
            //     width: 150,
            //     padding: const EdgeInsets.all(20),
            //     margin: const EdgeInsets.all(10),
            //     child: Column(
            //       children: <Widget> [
            //         const Text("hire for", style: TextStyle(fontSize: 15), textAlign: TextAlign.center,),
            //         const Text("Business", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            //         ButtonBar(
            //           children: <Widget> [
            //             ElevatedButton(
            //               onPressed: () {},
            //               child: Text("Hire Now"),
            //             ),
            //           ],
                    
            //         ),
            //       ],
            //     ),
    
            //   ),
            // ),
            
    
          ],
        // ),
            // ],
          ),
        ),
    
      ),
    );
  }
}