
import 'package:flutter/material.dart';

class RowSrceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        Expanded(
            child: Text(
          "1 st Row",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 40.0,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic),
        )),
        Expanded(
            child: Text(
          "2nd Row",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 40.0,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic),
        )),
        Expanded(
            child: Text(
          "3rd Row",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 40.0,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic),
        ))
      ],
    );
  }
}

class SampleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(
        child: const Text(
          "Click Here",
          style: TextStyle(
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600),
        ),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  var alertDialog = const AlertDialog(
    title: Text("Your Are There"),
    content: Text("Yes Iam"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
