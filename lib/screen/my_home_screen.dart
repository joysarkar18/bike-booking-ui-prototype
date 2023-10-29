import 'package:bike_rent_app/screen/Bike%20Details/bike_details.dart';
import 'package:bike_rent_app/screen/Check%20Out/check_out_screen.dart';
import 'package:bike_rent_app/screen/home/home_screen.dart';
import 'package:bike_rent_app/screen/map/map_screen.dart';
import 'package:bike_rent_app/screen/setting/setting_screen.dart';
import 'package:bike_rent_app/screen/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const CheckoutScreen(),
    const MapScreen(),
    const WalletScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "Assets/Images/Home.png",
              height: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "Assets/Images/Map Marker.png",
              height: 30,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "Assets/Images/Card Wallet.png",
              height: 30,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "Assets/Images/Settings.png",
              height: 30,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: const Color(0xffe5e5e5db),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
