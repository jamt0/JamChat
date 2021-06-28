import 'package:flutter/material.dart';

class View extends StatelessWidget {
  final String title;

  View({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signIn');
              },
              child: Text('SigIn'),
            ),
          ],
        ),
      ),
    );
  }
}