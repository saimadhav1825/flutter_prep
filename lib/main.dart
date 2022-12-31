import 'package:flutter/material.dart';
import 'package:flutterpreparation/samplescreenui/login_screen.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "SampleApp",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("SampleApp",
                  style:
                      TextStyle(fontStyle: FontStyle.italic, fontSize: 20.0)),
              backgroundColor: Colors.black12,
            ),
            body: LoginScreen(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("FAB clicked");
              },
              tooltip: 'Add One More Item',
              child: const Icon(Icons.add),
            )));
  }
}


