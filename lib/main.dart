import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/generated/locale_keys.g.dart';
import 'package:untitled/home.dart';
import 'package:untitled/login.dart';
import 'package:untitled/register.dart';

import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ru'), Locale('uz')],
      path: 'assets/translations',
      fallbackLocale: Locale('uz'),
      useOnlyLangCode: true,
      startLocale: Locale('uz'),
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const counterKey = 'counter';
  int _counter = 0;

  @override
  void initState() {
    _initCounter();
    super.initState();
  }

  Future _initCounter() async {
    _counter = await _getCounter();
  }

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });
    await _setCounter();
  }

  Future _setCounter() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(counterKey, _counter);
  }

  Future<int> _getCounter() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getInt(counterKey) ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return RegisterPage();
  }
}
