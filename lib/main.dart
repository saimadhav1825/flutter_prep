import 'package:flutter/material.dart';
import 'package:flutterpreparation/sampleLearn/main_screen.dart';
import 'package:flutterpreparation/sampleLearn/splash_screen.dart';
import 'package:flutterpreparation/samplescreenui/with_tabbar.dart';

void main() {
  runApp(MaterialApp(
      title: "Sample App",
      initialRoute: '/',
      routes: {'/': (context) => const SplashScreenView()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue, brightness: Brightness.light)));
  }