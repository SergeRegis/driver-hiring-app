import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text("Rules"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              
            },
          
          ),
          const Divider(),
          ListTile(
            title: const Text("Terms & Conditions"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // dropdown

              
            },
          
          ),
          const Divider(),
          ListTile(
            title: const Text("Privacy Policy"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              
              
            },
          
          ),
        ],
      ),
    );
  }
}