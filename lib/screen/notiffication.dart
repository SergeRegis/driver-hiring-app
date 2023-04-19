import 'dart:convert';


import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Notiffication extends StatefulWidget {
  const Notiffication({super.key});

  @override
  State<Notiffication> createState() => _NotifficationState();
}

class _NotifficationState extends State<Notiffication> {
  @override
  

  

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "Recent Notification",
                      style: TextStyle(fontSize: 40),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      "In development mode, you can send messages to this device via Firebase console.",
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Future getDeviceToken() async {
    FirebaseMessaging _firebaseMessage = FirebaseMessaging.instance;
    String? deviceToken = await _firebaseMessage.getToken();
    return (deviceToken == null) ? "" : deviceToken;
  }
}
