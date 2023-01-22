import 'package:flutter/material.dart';
import 'package:flutterpreparation/sampleLearn/home_screen_tab_view.dart';
import 'package:flutterpreparation/sampleLearn/profile_screen.dart';
import 'package:flutterpreparation/sampleLearn/setting_screen.dart';

import 'chat_screen.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationView> {
  int _currentPosition = 0;
  var list = const [
    Center(child: HomeScreenTabView()),
    Center(child: Text("Cart")),
    Center(child: ChatScreenView()),
    Center(child: ProfileScreenView()),
    Center(child: SettingScreenView())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentPosition],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPosition,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
        ],
        onTap: (index) {
          setState(() {
            _currentPosition = index;
          });
        },
      ),
    );
  }
}
