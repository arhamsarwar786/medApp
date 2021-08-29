import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'UserScreens/User.dart';
import 'UserScreens/UserChat.dart';
import 'chatSc/chat_body.dart';
import 'data/Admin Dashboard.dart';
import 'data/Profile.dart';
import 'medcineform.dart';
class BottomBarUser extends StatefulWidget {
  @override
  _BottomBarUserState createState() => _BottomBarUserState();
}

class _BottomBarUserState extends State<BottomBarUser> {
  int _currentIndex = 0;

  Widget buildpage() {
    switch (_currentIndex) {
      case 0:
        return UserScreen();
      case 1:
        return UserChatMessage();
      case 2:
        return MedicineDetail();
      case 3:
        return Profile();
      default:
        return UserScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildpage(),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: 0,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.chat),

            title: Text('Chat'),
            activeColor: Colors.purpleAccent,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text(
              'Donate',
            ),
            activeColor: Colors.pink,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('profile'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
