import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;

  ThemeData light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
  );

  ThemeData dark = ThemeData.dark().copyWith(
      primaryColor: Colors.black54,indicatorColor: Colors.green,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green.withOpacity(0.2))))
      //colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      );

  ThemeProvider({required bool isDarkMode}) {
    _selectedTheme = isDarkMode ? dark : light;}

  Future<void> swapTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_selectedTheme == dark) {
      _selectedTheme = light;
      prefs.setBool("isDarkTheme", false);
    } else {
      _selectedTheme = dark;
      prefs.setBool("isDarkTheme", true);}
    notifyListeners();}
  ThemeData get getTheme => _selectedTheme;}
