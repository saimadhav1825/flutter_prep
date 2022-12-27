import 'package:flutter/material.dart';
import 'package:flutterpreparation/samplescreenui/first_screen.dart';

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
            body: FirstScreen()));
  }
}
