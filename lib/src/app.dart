import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'pages/Home/index.dart';
import 'pages/SignIn/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JamChat',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Home(),
      routes: {
        '/signIn': (context) => SignIn(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}