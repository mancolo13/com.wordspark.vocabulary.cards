import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class QuizTab extends StatefulWidget {
  const QuizTab({super.key});

  @override
  State<QuizTab> createState() => _QuizTabState();
}

class _QuizTabState extends State<QuizTab> {
  int _score = 0;
  int _q = 0;
  final _cards = [
    {'word': 'Serendipity', 'opts': ['Good fortune by chance', 'Deep sadness', 'Quick decision', 'Noisy talk'], 'c': 0},
    {'word': 'Ephemeral', 'opts': ['Lasting forever', 'Short-lived', 'Solid rock', 'Poetic phrase'], 'c': 1},
  ];

  @override
  Widget build(BuildContext context) {
    final cur = _cards[_q % _cards.length];
    return Scaffold(
      appBar: AppBar(title: const Text('Vocab Flash Quiz'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text('Score: $_score', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.primary)),
          const SizedBox(height: 24),
          Card(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(32),
              child: Text(cur['word'] as String, textAlign: TextAlign.center, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 24),
          ...(cur['opts'] as List<String>).asMap().entries.map((e) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.surface),
                  onPressed: () {
                    setState(() {
                      if (e.key == cur['c']) _score += 10;
                      _q++;
                    });
                  },
                  child: Text(e.value, style: const TextStyle(fontSize: 16)),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
