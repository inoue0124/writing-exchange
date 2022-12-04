import 'package:flutter/material.dart';

import 'tabbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Writing exchange';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const TabBarPage(),
    );
  }
}
