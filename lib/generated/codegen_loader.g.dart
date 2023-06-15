// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "Home_Screen": "Home Screen",
  "Select_Language": "Select Language",
  "Login": "Login",
  "English": "English",
  "Russian": "Russian",
  "Uzbek": "Uzbek"
};
static const Map<String,dynamic> ru = {
  "Home_Screen": "Главный экран",
  "Select_Language": "Выбрать язык",
  "Login": "Войти",
  "English": "Aнглийский",
  "Russian": "Русский",
  "Uzbek": "Узбек"
};
static const Map<String,dynamic> uz = {
  "Home_Screen": "Bosh sahifa",
  "Select_Language": "Tilni tanlash",
  "Login": "Kirish",
  "English": "Ingliz tili",
  "Russian": "Rus tili",
  "Uzbek": "O`zbek tili"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru, "uz": uz};
}
