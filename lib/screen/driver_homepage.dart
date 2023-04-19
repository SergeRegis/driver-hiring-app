import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth101/screen/call_driver.dart';
import 'package:firebase_auth101/screen/create_driver.dart';

import 'package:firebase_auth101/screen/driver_profile.dart';
import 'package:firebase_auth101/screen/driver_register.dart';
import 'package:flutter/material.dart';

class DriverHomepage extends StatelessWidget {
  const DriverHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                        height: 300,
                        width: 100,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/driver.png',
                                  width: 400,
                                  height: 200,
                                  fit: BoxFit.cover,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Text(
                              'Hire for',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Personal',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            DriverProfile(),
                                      ),
                                    );
                                  },
                                  child: const Text("Hire Now"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 180,
                        height: 250,
                        child: Column(
                          children: [
                            Text(
                              'Hire for',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              'Business',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                             DriverProfile(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Hire Now",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
