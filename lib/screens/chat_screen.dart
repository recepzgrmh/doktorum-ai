import 'package:ai_doktorum_online/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text('Chat', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Card(
              color: Colors.teal.shade50,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Durum Özeti',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '22 yaş, 70 kg, 178 cm boy.\n'
                      '2 gündür sağ üst bacakta hareketle artan ağrı.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              color: Colors.teal.shade50,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Olası Sebepler',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('• Kas zorlanması\n• Kısmi kas yırtığı\n• Kas spazmı'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              color: Colors.teal.shade50,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'İlk Yardım Önerileri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'RICE protokolü:\n'
                      '- Dinlenme\n'
                      '- Buz uygulama\n'
                      '- Kompresyon (bandaj)\n'
                      '- Yükseltme\n'
                      'Gerekirse NSAID ağrı kesici.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            Card(
              color: Colors.teal.shade50,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Ne Zaman Doktora?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '• 48 saatte ağrı hâlâ geçmediyse\n'
                      '• Şiddetli şişlik veya morarma varsa\n'
                      '• Bacağa hiç basamıyorsan',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            CustomTextWidget(
              icon: Icons.send,
              title: 'Sohbet\'e devam etmek için tıklayın',
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
