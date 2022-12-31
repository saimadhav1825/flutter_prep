import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  String userName = "";
  String? _gender = "Male";
  final _genderList = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            onSubmitted: (String name) {
              setState(() {
                userName = name;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Text(
            "Your Name $userName",
            style: const TextStyle(color: Colors.green),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: DropdownButton<String>(
            onChanged: (String? newValueSelected) {
              _onDropDownItemSelected(newValueSelected);
            },
            items: _genderList.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            value: _gender,
          ),
        )
      ],
    );
  }

  void _onDropDownItemSelected(String? newValueSelected) {
    setState(() {
      this._gender = newValueSelected;
    });
  }
}
