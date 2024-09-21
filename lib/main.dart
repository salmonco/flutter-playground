import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/main/main_page.dart';
import 'package:flutter_playground/themes/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.customThemeData(),
      home: const MainPage(),
    );
  }
}
