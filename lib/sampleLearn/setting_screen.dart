import 'package:flutter/material.dart';

class SettingScreenView extends StatefulWidget {
  const SettingScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingScreenViewState();
  }
}

class _SettingScreenViewState extends State<SettingScreenView> {
  var _isTermsAndConditionsChecked = false;
  var _genderSelectionPosition = 0;
  List<String> countryList = ["India", "SriLanka", "Bangladesh"];
  var country = "India";
  var isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Setting")),
        endDrawer: Drawer(
          backgroundColor: Colors.lightBlueAccent,
          child: ListView(
            children: const <Widget>[
              DrawerHeader(child: Center(child: Text("Mail"))),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepOrange,
                ),
              ),
              ListTile(
                title: Text("Profile", style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.person, color: Colors.deepOrange),
              ),
              ListTile(
                title: Text("Logout", style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.logout, color: Colors.deepOrange),
              )
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("Terms And Conditions"),
              value: _isTermsAndConditionsChecked,
              onChanged: (isChecked) {
                setState(
                    () => _isTermsAndConditionsChecked = isChecked ?? false);
              },
            ),
            RadioListTile(
                title: const Text("Male"),
                value: 0,
                groupValue: _genderSelectionPosition,
                onChanged: (position) {
                  setState(() => _genderSelectionPosition = position ?? 0);
                }),
            RadioListTile(
                title: const Text("Female"),
                value: 1,
                groupValue: _genderSelectionPosition,
                onChanged: (position) {
                  setState(() => _genderSelectionPosition = position ?? 1);
                }),
            DropdownButton(
              value: country,
              items: countryList.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                setState(() => country = value ?? "");
              },
            ),
            Text("Country Selected $country"),
            SwitchListTile(
                title: const Text("Toggle Button"),
                value: isSwitchOn,
                onChanged: (isOn) {
                  setState(() => isSwitchOn = isOn);
                })
          ],
        ));
  }
}
