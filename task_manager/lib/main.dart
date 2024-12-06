import 'package:flutter/material.dart';
import 'package:task_manager/screens/taskscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Track current theme mode (light or dark)
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Toggle App',
      theme: ThemeData.light(), 
      darkTheme: ThemeData.dark(), 
      themeMode: _isDarkTheme ? ThemeMode.dark : ThemeMode.light, 
      home: TaskScreen(
        isDarkTheme: _isDarkTheme,
        toggleTheme: _toggleTheme,
      ),
    );
  }
}
