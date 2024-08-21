import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio - Henrique França',
      theme: ThemeData(
        primaryColor: const Color(0xFF007bff),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF495057),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF343a40)),
          bodyMedium: TextStyle(color: Color(0xFF6c757d)),
        ),
      ),
      home: const HomePage(),
    );
  }
}
