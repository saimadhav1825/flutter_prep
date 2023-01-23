import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class CartScreenView extends StatefulWidget {
  const CartScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CartScreenViewState();
  }
}

class _CartScreenViewState extends State<CartScreenView> {
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: ElevatedButton(
              child: const Text("Camera Permission"),
              onPressed: () {
                cameraPermission();
              },
            ),
          ),
          Center(child: datePicker())
        ],
      ),
    );
  }

  void cameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      final status = await Permission.camera.request();
      print(status.isGranted);
    }
  }

  Widget datePicker() {
    return TextField(
      controller: dateInput,
      //editing controller of this TextField
      decoration: const InputDecoration(
          icon: Icon(Icons.calendar_today), //icon of text field
          labelText: "Enter Date" //label text of field
          ),
      readOnly: true,
      //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2100));

        if (pickedDate != null) {
          //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          //formatted date output using intl package =>  2021-03-16
          setState(() {
            dateInput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {}
      },
    );
  }
}
