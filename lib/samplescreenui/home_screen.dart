import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: 200.0,
        height: 200.0,
        color: Colors.deepOrange,
        margin: const EdgeInsets.all(20.0),
        child: const Text(
          "Sample Code",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
      ),
    );
  }
}
