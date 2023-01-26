import 'package:flutter/material.dart';
import 'package:flutterpreparation/mvcpattern/view/login_screen_view.dart';

void main() {
  runApp(MaterialApp(
      title: "Sample App",
      initialRoute: '/',
      routes: {'/': (context) =>  LoginScreen()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue, brightness: Brightness.light)));
  }