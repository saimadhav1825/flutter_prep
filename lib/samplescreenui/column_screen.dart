import 'package:flutter/cupertino.dart';
import 'package:flutterpreparation/samplescreenui/image_screen.dart';
import 'package:flutterpreparation/samplescreenui/row_screen.dart';

class ColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          const Expanded(
              child: Text(
            "1 st Row",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic),
          )),
          const Expanded(
              child: Text(
            "2nd Row",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic),
          )),
          const Expanded(
              child: Text(
            "3rd Row",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic),
          )),
          ImageViewAssest(),
          SampleButton()
        ],
      ),
    );
  }
}
