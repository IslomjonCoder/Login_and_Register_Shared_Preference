import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:untitled/login.dart';
import 'generated/locale_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.Home_Screen.tr()),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              icon: Icon(Icons.login))
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            Text(
              LocaleKeys.Select_Language.tr(),
              textAlign: TextAlign.center,
            ),
            ListTile(
              title: Text(LocaleKeys.English.tr()),
              onTap: () {
                context.setLocale(Locale('en'));
              },
            ),
            ListTile(
              title: Text(LocaleKeys.Russian.tr()),
              onTap: () {
                context.setLocale(Locale('ru'));
              },
            ),
            ListTile(
              title: Text(LocaleKeys.Uzbek.tr()),
              onTap: () {
                context.setLocale(Locale('uz'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
