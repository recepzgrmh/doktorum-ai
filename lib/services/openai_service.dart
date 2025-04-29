// lib/services/openai_service.dart

/*
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  final _apiKey = dotenv.env['OPENAI_API_KEY']!;
  final _endpoint = Uri.parse('https://api.openai.com/v1/chat/completions');

  Future<String> analyzeSymptoms(Map<String, String> inputs) async {
    // prompt'u hazırla
    final prompt =
        StringBuffer()
          ..writeln("Kullanıcı bilgileri:")
          ..writeln("- Boy: ${inputs['Boy']}")
          ..writeln("- Yaş: ${inputs['Yaş']}")
          ..writeln("- Kilo: ${inputs['Kilo']}")
          ..writeln("- Şikayet: ${inputs['Şikayet']}")
          ..writeln("- Şikayet Süresi: ${inputs['Şikayetin Süresi']}")
          ..writeln("- Mevcut İlaçlar: ${inputs['Mevcut İlaçlar']}")
          ..writeln("\nBu bilgilere dayanarak kısa tıbbi analiz yap.");

    final response = await http.post(
      _endpoint,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_apiKey',
      },
      body: jsonEncode({
        'model': 'gpt-3.5-turbo',
        'messages': [
          {'role': 'system', 'content': 'Sen bir tıbbi asistansın.'},
          {'role': 'user', 'content': prompt.toString()},
        ],
        'max_tokens': 300,
        'temperature': 0.7,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final content = data['choices'][0]['message']['content'] as String? ?? '';
      return content.trim();
    } else {
      throw Exception(
        'OpenAI API hata: ${response.statusCode} ${response.body}',
      );
    }
  }
}

*/
