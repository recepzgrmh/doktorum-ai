// lib/main.dart

import 'package:flutter/material.dart';
import 'package:ai_doktorum_online/screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ai_doktorum_online/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env"); // .env’i yükle
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
