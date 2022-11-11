import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:flutter/material.dart';
import 'package:fact/home.dart';
import 'package:fact/profilePage.dart';
import '';
import 'dashboardPage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPage(),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBody() {
    return Center(
      child: Text(
        "Bottom Navigation Bar",
        style: TextStyle(
          fontSize: 32.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildPage() {
    switch (index) {
      case 1:
        return DashboardPage();
      case 2:
      //   return TicketListPage();
      case 3:
        return ProfilePage();
      case 0:
      default:
        return HomePage();
    }
  }

  Widget buildBottomNavigation() {
    return BottomNavyBar(
      itemCornerRadius: 20.0,
      backgroundColor: Colors.white,
      containerHeight: 80,
      selectedIndex: index,
      onItemSelected: (index) {
        setState(() {
          this.index = index;
        });
      },
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          title: Text("Home"),
          activeColor: Colors.green,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.dashboard, color: Colors.blue),
          title: Text("Dashboard"),
          activeColor: Colors.green,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.file_open, color: Colors.blue),
          title: Text("Ticket"),
          activeColor: Colors.green,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.person, color: Colors.blue),
          title: Text("Profile"),
          activeColor: Colors.green,
          inactiveColor: Colors.black,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
