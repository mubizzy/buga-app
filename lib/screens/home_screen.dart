import 'package:flutter/material.dart';

import '../home/new_home3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _NewHomeState();
}

class _NewHomeState extends State<HomeScreen> {
  int currentItem = 0;
  final screens = [
    NewHome3(),
    // DummyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: screens[currentItem],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentItem,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => currentItem = index),
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/home.png"),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/package.png"),
                ),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/wallet.png"),
                ),
                label: "Wallet"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/order.png"),
                ),
                label: "Tracker"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/settings.png"),
                ),
                label: "Settings"),
          ]),
    );
  }
}
