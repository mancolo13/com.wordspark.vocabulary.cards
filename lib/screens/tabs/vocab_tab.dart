import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class VocabTab extends StatefulWidget {
  const VocabTab({super.key});

  @override
  State<VocabTab> createState() => _VocabTabState();
}

class _VocabTabState extends State<VocabTab> {
  final List<Map<String, String>> _words = [
    {"word": "Serendipity", "def": "The occurrence of events by chance in a happy or beneficial way.", "ex": "A fortunate stroke of serendipity brought them together."},
    {"word": "Ephemeral", "def": "Lasting for a very short time.", "ex": "Fame in the digital age is often ephemeral."},
    {"word": "Resilience", "def": "The capacity to recover quickly from difficulties; toughness.", "ex": "Courage and mental resilience led to their breakthrough."},
  ];

  int _idx = 0;

  @override
  Widget build(BuildContext context) {
    final item = _words[_idx];
    return Scaffold(
      appBar: AppBar(title: const Text('WordSpark Vocabulary'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      Text(item['word']!, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                      const SizedBox(height: 16),
                      Text(item['def']!, style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
                      const SizedBox(height: 12),
                      Text('"${item['ex']!}"', style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: AppTheme.textSecondary), textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => setState(() => _idx = (_idx + 1) % _words.length),
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.black, padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16)),
                child: const Text('Next Flashcard', style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
