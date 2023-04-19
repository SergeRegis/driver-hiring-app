import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth101/screen/booking_screen.dart';
import 'package:firebase_auth101/screen/driver_homepage.dart';
import 'package:firebase_auth101/screen/profile_screen.dart';
import 'package:firebase_auth101/screen/welcome_home_screen.dart';
import 'package:firebase_auth101/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    WelcomeHome(),
    DriverHomepage(),
    ProfileScreen(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20,
        selectedIconTheme: IconThemeData(
          color: Colors.green,
        ),
        selectedItemColor: Colors.green,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        
        onTap: _onItemTapped,
      ),
    );
  }
}




