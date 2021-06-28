import 'package:flutter/material.dart';
import 'pages/Home/index.dart';
import 'pages/SignIn/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JamChat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        '/signIn': (context) => SignIn(),
      },
    );
  }
}