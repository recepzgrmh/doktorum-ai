// lib/home_screen.dart
import 'package:ai_doktorum_online/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:ai_doktorum_online/widgets/custom_text_widget.dart';
import 'package:ai_doktorum_online/services/openai_service.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // final _service = OpenAIService();

  // Her alan için ayrı controller
  final TextEditingController boyController = TextEditingController();
  final TextEditingController yasController = TextEditingController();
  final TextEditingController kiloController = TextEditingController();
  final TextEditingController sikayetController = TextEditingController();
  final TextEditingController sureController = TextEditingController();
  final TextEditingController ilacController = TextEditingController();

  bool _loading = false;
  String? _analysisResult;

  @override
  void dispose() {
    boyController.dispose();
    yasController.dispose();
    kiloController.dispose();
    sikayetController.dispose();
    sureController.dispose();
    ilacController.dispose();
    super.dispose();
  }

  /*
  Future<void> _onAnalyze() async {
    setState(() {
      _loading = true;
      _analysisResult = null;
    });
    try {
      final inputs = {
        'Boy': boyController.text.trim().isEmpty ? '—' : boyController.text.trim(),
        'Yaş': yasController.text.trim().isEmpty ? '—' : yasController.text.trim(),
        'Kilo': kiloController.text.trim().isEmpty ? '—' : kiloController.text.trim(),
        'Şikayet': sikayetController.text.trim().isEmpty ? '—' : sikayetController.text.trim(),
        'Şikayetin Süresi': sureController.text.trim().isEmpty ? '—' : sureController.text.trim(),
        'Mevcut İlaçlar': ilacController.text.trim().isEmpty ? '—' : ilacController.text.trim(),
      };
      final result = await _service.analyzeSymptoms(inputs);
      setState(() => _analysisResult = result);
    } catch (e) {
      setState(() => _analysisResult = 'Hata: $e');
    } finally {
      setState(() => _loading = false);
    }
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Doktorum Online AI',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Column(
            children: [
              CustomTextWidget(
                title: 'Boy',
                icon: Icons.straighten,
                keyboardType: TextInputType.number,
                controller: boyController,
              ),

              CustomTextWidget(
                title: 'Yaş',
                icon: Icons.cake,
                keyboardType: TextInputType.number,
                controller: yasController,
              ),

              CustomTextWidget(
                title: 'Kilo',
                icon: Icons.monitor_weight,
                keyboardType: TextInputType.number,
                controller: kiloController,
              ),

              CustomTextWidget(
                title: 'Şikayet',
                icon: Icons.report,
                keyboardType: TextInputType.text,
                controller: sikayetController,
                maxLines: 3,
              ),

              CustomTextWidget(
                title: 'Şikayetin Süresi',
                icon: Icons.timer,
                keyboardType: TextInputType.text,
                controller: sureController,
              ),

              CustomTextWidget(
                title: 'Mevcut İlaçlar',
                icon: Icons.local_pharmacy,
                keyboardType: TextInputType.text,
                controller: ilacController,
                maxLines: 3,
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      _loading
                          ? null
                          : () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChatScreen(),
                              ),
                            );
                          },
                  child:
                      _loading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text('Analiz Et'),
                ),
              ),

              if (_analysisResult != null) ...[
                const SizedBox(height: 24),
                Text(_analysisResult!, style: const TextStyle(fontSize: 8)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
