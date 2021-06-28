import 'package:flutter/material.dart';
import 'view.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String title = "SignUp";

  @override
  Widget build(BuildContext context) {
    return View(title: title);
  }
}