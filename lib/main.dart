// lib/main.dart

import 'package:flutter/material.dart';
import 'package:ai_doktorum_online/home_screen.dart';
import 'package:ai_doktorum_online/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doktorum Online AI',
      theme: AppTheme.lightTheme,
      home: const Homescreen(),
    );
  }
}
