import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/models.dart';

import 'fooderlich_theme.dart';
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager())
        ],
        child: const Home(title: 'Fooderlich'),
        )

      //home: const Home(title: 'Fooderlich'),
    );
  }
}