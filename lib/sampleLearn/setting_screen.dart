import 'package:flutter/material.dart';

class SettingScreenView extends StatefulWidget {
  const SettingScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SettingScreenViewState();
  }
}

class _SettingScreenViewState extends State<SettingScreenView> {
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
                title: Text("Home",style: TextStyle(color: Colors.white),),
                leading: Icon(
                  Icons.home,
                  color: Colors.deepOrange,
                ),
              ),
              ListTile(
                title: Text("Profile",style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.person, color: Colors.deepOrange),
              ),
              ListTile(
                title: Text("Logout",style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.logout, color: Colors.deepOrange),
              )
            ],
          ),
        ));
  }
}
