import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'themes.dart';

void main() {
  runApp(const PersonalProfileApp());
}

class PersonalProfileApp extends StatefulWidget {
  const PersonalProfileApp({super.key});

  @override
  State<PersonalProfileApp> createState() => _PersonalProfileAppState();
}

class _PersonalProfileAppState extends State<PersonalProfileApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Profile',
      theme: isDarkMode ? darkTheme : lightTheme,
      home: Scaffold(
        body: const HomeScreen(),
        floatingActionButton: FloatingActionButton(
          onPressed: toggleTheme,
          child: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
        ),
      ),
    );
  }
}
