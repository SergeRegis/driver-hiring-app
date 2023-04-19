import 'package:flutter/material.dart';

class SafetyPrivacy extends StatelessWidget {
  const SafetyPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Who do you want to contact",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "A 911 call might be about a noisy neighbor, a trespassing concern, or from someone experiencing a mental health crisis. As the nation's helpline, 911 is typically the only resource that's readily available to people seeking any kind of timely assistance.",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Call Police 911",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                ),
                icon: Icon(Icons.call),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Call Ambulance 112",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                ),
                icon: Icon(Icons.call),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ElevatedButton.icon(onPressed: () {},  label: Text("Call 911"), icon: Icon(Icons.call),)