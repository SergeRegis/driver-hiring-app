// import 'dart:html';

import 'package:firebase_auth101/screen/driver_profile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class CallDriver extends StatelessWidget {
  const CallDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('courses').snapshots(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot course = snapshot.data!.docs[index];
              return ListTile(

                leading: Image.network(course['img'],
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                ),
                title: Text(course['name'],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

                ),
                subtitle: Text(course['detail'],
                style: const TextStyle(
                  fontSize: 15,
                ),

                ),

                

                trailing: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DriverProfile(),
                      ),
                    );
                  }, 
                  icon: Icon(Icons.call),
                  label: Text("Call Driver",),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),


              ),
              

              
              
              );
              

              


            },
            
          );

        },
        
      ),
      
    );
  }
}
