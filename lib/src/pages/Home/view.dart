import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class View extends StatelessWidget {
  final String title;

  View({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: Text('hola')),
              Fotter(),
            ],
          ),
        ),
      ),
    );
  }
}

class Fotter extends StatelessWidget {
  const Fotter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/signIn');
          },
          child: Text(AppLocalizations.of(context)!.signUp),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.haveACount),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signIn');
              },
              child: Text(AppLocalizations.of(context)!.signIn),
            ),
          ],
        ),
      ],
    );
  }
}
