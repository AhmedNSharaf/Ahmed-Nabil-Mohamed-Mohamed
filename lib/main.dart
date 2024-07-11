// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task3/screens/category.dart';
import 'package:task3/screens/landing_screen.dart';
import 'package:task3/screens/questions.dart';
import 'package:task3/screens/score.dart';
import 'package:task3/utils/colors.dart';

// Define your custom theme (adjust properties to your preferences)
final ThemeData myTheme = ThemeData(
  primaryColor: primaryColor, // Main color of the app
  hintColor: Colors.black, // Secondary color
  textTheme: TextTheme(
    bodyLarge:
        TextStyle(fontSize: 16.0, color: Colors.black), // Body text style
  ),
  appBarTheme: AppBarTheme(
    color: primaryColor, // App bar color
  ),
  // ...other theme properties (optional)
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme, // Apply the custom theme here
      home: Questions(),
      debugShowCheckedModeBanner: false,
    );
  }
}
