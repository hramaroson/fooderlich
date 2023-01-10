import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    
    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: const Home(title: 'Fooderlich'),
    );
  }
}