import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jam_chat/src/pages/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JamChat',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
      routes: {
        '/signIn': (context) => SignIn(),
        '/signUp': (context) => SignUp(),
      },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
