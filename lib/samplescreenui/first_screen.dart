import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Material(
        color: Colors.blueAccent,
        child: Center(
            child: Text("Sample App",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 30.0, fontStyle: FontStyle.italic))));
  }
  
}