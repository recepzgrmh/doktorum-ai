// lib/home_screen.dart

import 'package:flutter/material.dart';
import 'package:ai_doktorum_online/widgets/custom_text_widget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Doktorum Online AI',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            children: [
              const CustomTextWidget(
                title: 'Boy',
                icon: Icons.straighten,
                keyboardType: TextInputType.number,
              ),
              const CustomTextWidget(
                title: 'Yaş',
                icon: Icons.cake,
                keyboardType: TextInputType.number,
              ),
              const CustomTextWidget(
                title: 'Kilo',
                icon: Icons.monitor_weight,
                keyboardType: TextInputType.number,
              ),
              const CustomTextWidget(
                title: 'Şikayet',
                icon: Icons.report,
                maxLines: 3,
              ),
              const CustomTextWidget(
                title: 'Şikayetin Süresi',
                icon: Icons.timer,
              ),
              const CustomTextWidget(
                title: 'Mevcut İlaçlar',
                icon: Icons.local_pharmacy,
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              ElevatedButton(onPressed: () {}, child: const Text('Analiz Et')),
            ],
          ),
        ),
      ),
    );
  }
}
