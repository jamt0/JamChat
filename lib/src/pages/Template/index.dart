import 'package:flutter/material.dart';
import 'view.dart';

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {

  String title = "Template";

  @override
  Widget build(BuildContext context) {
    return View(title: title);
  }
}
