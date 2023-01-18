import 'package:flutter/material.dart';
import 'package:flutterpreparation/samplescreenui/with_tabbar.dart';

void main() {
  runApp(MaterialApp(
      title: "Sample App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue, brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
          titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Container(
          child: Center(
            child: Text("Flutter",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.red[200],
                    fontFamily: "Raleway")),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      )));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: WithTabBar(),
    );
  }
}
