import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class CartScreenView extends StatefulWidget {
  const CartScreenView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CartScreenViewState();
  }
}

class _CartScreenViewState extends State<CartScreenView> {
  final ValueNotifier<int> _valueNotifier = ValueNotifier(0);
  final Uri _url = Uri.parse('https://flutter.dev');
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart"), backgroundColor: Colors.amber),
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
          Center(child: datePicker()),
          SvgPicture.asset(
            "assets/video_svgrepo_com.svg",
            width: 100,
            height: 100,
          ),
          ElevatedButton(onPressed: _launchUrl, child: const Text("Open Url")),
          ValueListenableBuilder(
            valueListenable: _valueNotifier,
            builder: (context, value, child) => Text(
              "$value",
              style: const TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add),
        onPressed: () {
          _valueNotifier.value += 1;
        },
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

  //In Other App
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
