import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterpreparation/sampleLearn/main_screen.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenViewState();
  }
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const BottomNavigationView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "assets/flutter_logo.png",
          fit: BoxFit.fill
        ),
      ),
    );
  }
}
