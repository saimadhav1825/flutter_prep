import 'package:flutter/material.dart';
import 'package:flutterpreparation/sampleLearn/main_screen.dart';
import 'package:flutterpreparation/samplescreenui/with_tabbar.dart';

void main() {
  runApp(MaterialApp(
    title: "Sample App",
    initialRoute: '/',
    routes: {'/': (context) => const BottomNavigationView()},
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.blue, brightness: Brightness.light),
    /* Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
          titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: SampleStateLessWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           Fluttertoast.showToast(msg: "This Is Flutter",backgroundColor: Colors.green);
          },
          tooltip: "Add Some Data",
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ))*/
  ));
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
