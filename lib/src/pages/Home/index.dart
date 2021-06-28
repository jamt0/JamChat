import 'package:flutter/material.dart';
import 'view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "JamChat";

  @override
  Widget build(BuildContext context) {
    return View(title: title,);
}
}
