import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  late String title;

  HomeScreen(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title, textAlign: TextAlign.center));
  }
}
