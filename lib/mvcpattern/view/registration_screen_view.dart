import 'package:flutter/material.dart';
import 'package:flutterpreparation/mvcpattern/controller/registration_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends StateMVC<RegistrationScreen> {
  final RegistrationController _registrationController = RegistrationController();

  _RegistrationScreenState() : super(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _registrationController.scaffoldKey,
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _registrationController.formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (item) =>
                    item!.length > 2 ? null : "Enter valid name",
                    onSaved: (item) =>
                    _registrationController.registerModel.name = item!,
                    decoration: const InputDecoration(
                        hintText: "Name", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (item) =>
                    item!.contains("@") ? null : "Enter valid email",
                    onSaved: (item) =>
                    _registrationController.registerModel.email = item!,
                    decoration: const InputDecoration(
                        hintText: "Email", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText:
                    _registrationController.showPassword ? true : false,
                    onSaved: (item) =>
                    _registrationController.registerModel.password = item!,
                    validator: (item) =>
                    item!.length > 6
                        ? null
                        : "Password should be more than 6 chars",
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            icon: Icon(_registrationController.showPassword
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _registrationController.showPassword =
                                !_registrationController.showPassword;
                              });
                            })),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _registrationController.register();
                    },
                    child: const Text("Register"),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
