import 'package:flutter/material.dart';
import 'package:flutterpreparation/samplescreenui/home_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textMailController = TextEditingController();
  TextEditingController textPasswordController = TextEditingController();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
            controller: textMailController,
            decoration: const InputDecoration(
                hintText: "Enter Mail",
                border: OutlineInputBorder(),
                hintStyle: TextStyle(color: Colors.red),
                suffixIcon: Icon(Icons.mail)),
          ),
          TextField(
            controller: textPasswordController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.red),
                suffixIcon: Icon(Icons.remove_red_eye)),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() => count++);
                Fluttertoast.showToast(msg: "Click count $count");
              },
              child: Text("Login"))
        ],
      ),
    );
  }

  createAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      content: Text("Login Screen"),
      title: Text("Alert Dialog"),
      actions: <Widget>[
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen("Hello World")));
            },
            child: Text("Close")),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Ok"))
      ],
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  List<String> getList() {
    return List.generate(1000, (index) => "Item At $index");
  }

  Widget getListView() {
    var list = getList();
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text(list[index]),
        onTap: () {
          debugPrint(list[index]);
        },
      );
    });
  }
}
