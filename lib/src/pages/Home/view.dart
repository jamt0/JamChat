import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:introduction_screen/introduction_screen.dart';

class View extends StatelessWidget {
  final String title;

  View({required this.title});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: AppLocalizations.of(context)!.title1,
          body: AppLocalizations.of(context)!.description1,
          image: Center(
            child:
                Image.network("https://image.freepik.com/vector-gratis/personajes-diseno-plano-chateando-aplicacion-citas_23-2148271380.jpg", height: 175.0),
          ),
        ),
        PageViewModel(
          title: AppLocalizations.of(context)!.title2,
          body: AppLocalizations.of(context)!.description2,
          image: Center(
            child:
                Image.network("https://image.freepik.com/vector-gratis/personajes-diseno-plano-chateando-aplicacion-citas_23-2148271380.jpg", height: 175.0),
          ),
        ),
        PageViewModel(
          title: AppLocalizations.of(context)!.title3,
          body: AppLocalizations.of(context)!.description3,
          image: Center(
            child:
                Image.network("https://image.freepik.com/vector-gratis/personajes-diseno-plano-chateando-aplicacion-citas_23-2148271380.jpg", height: 175.0),
          ),
          footer: Fotter()
        )
      ],
      showSkipButton: true,
      showDoneButton: false,
      skip: const Text("Skip"),
      next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
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
            Navigator.pushNamed(context, '/signUp');
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
