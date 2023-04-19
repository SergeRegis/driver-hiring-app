import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget> [
           Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text("Welcome to", style: TextStyle(fontSize: 20, color: Colors.grey), textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                const Text("Home", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Text("We are here to help you", style: TextStyle(fontSize: 20, color: Colors.grey),),
                const SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(child: Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 20),)),
                ),
              ],
            ),
        ],
      ),
    
    
    );
  }
}