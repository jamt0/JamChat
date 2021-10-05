import 'package:flutter/material.dart';

class View extends StatelessWidget {
  final String title;
  final void Function() onSubmit;

  View({required this.title, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nickname'
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password'
                        ),
                      ),
                    ]
                  )
                ),
                ElevatedButton(
                  child: Text('Registrarse'),
                  onPressed: onSubmit
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}