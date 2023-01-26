import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../model/registration_model.dart';

class RegistrationController extends ControllerMVC{
  var scaffoldKey = GlobalKey<ScaffoldState>(); // screen
  var formKey = GlobalKey<FormState>(); // forms

  bool showPassword = false;

  late RegisterModel registerModel;

  RegistrationController() {
    registerModel = RegisterModel();
  }

  register() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }
}