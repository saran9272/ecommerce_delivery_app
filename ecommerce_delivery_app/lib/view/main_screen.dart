import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:ecommerce_delivery_app/view/main_screen_tabs/payment_screen.dart';
import 'package:ecommerce_delivery_app/view/main_screen_tabs/earnings_screen.dart';
import 'package:ecommerce_delivery_app/view/main_screen_tabs/history_screen.dart';
import 'package:ecommerce_delivery_app/view/main_screen_tabs/profile_screen.dart';
import 'package:flutter/material.dart';
import '../constant/colors.dart';
import 'main_screen_tabs/home_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const EarningsScreen(),
    const PaymentScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavyBar(
        backgroundColor: blue,
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.monetization_on_rounded),
            title: const Text('Earnings'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.delivery_dining),
            title: const Text('Payment'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.history),
            title: const Text('History'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
          BottomNavyBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Profile'),
            activeColor: Colors.white,
            inactiveColor: Colors.black,),
        ],),

      body: screens[currentIndex],
    );
  }
}
