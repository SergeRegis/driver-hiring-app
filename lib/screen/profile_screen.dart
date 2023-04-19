import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/screen/map_view.dart';
import 'package:firebase_auth101/screen/notiffication.dart';
import 'package:firebase_auth101/screen/safety_privacy.dart';
import 'package:firebase_auth101/screen/setting.dart';
import 'package:firebase_auth101/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final String? username = FirebaseAuth.instance.currentUser?.email;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      
                    ],
                  
                  ),
                  const SizedBox(height: 10,),

                  const CircleAvatar(
                    
                    radius: 50,
                    // person avatar
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),



                    // backgroundImage: AssetImage("assets/profile.png"),
                  
                  ),


                  // const SizedBox(height: 10,),

                   Text("Welcome $username",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  ),

                  // const SizedBox(height: 10,),
                  
                  const Text(
                  " 5.0 (23 Reviews)",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),


                  
                ]
                
              ),

              


             ),
             ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Account"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              
             ),
             // notification icon
              ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text("Notification"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> const  Notiffication()));


                  },
                
              ),
              // settings icon
              ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Setting()));
                  },
                
              ),
              // support
              // ListTile(
              //     leading: const Icon(Icons.support),
              //     title: const Text("Support"),
              //     trailing: const Icon(Icons.arrow_forward_ios),
              //     onTap: () {},
                
              // ),
              // safety and privacy
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text("Safety & Privacy"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SafetyPrivacy()));
                 
                },
              ),
              // map
              ListTile(
                leading: const Icon(Icons.location_on_outlined),
                title: const Text("Map"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  MapView())); 
                },
              ),
              // diveder
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              // logaout
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                // trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () async{
                  await FirebaseAuth.instance.signOut();
                  if (!mounted) return;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const WelcomeScreen();
                  }));
                },
              ),


          ],
          
        ),
        
        
      ),
    );
  }
}
