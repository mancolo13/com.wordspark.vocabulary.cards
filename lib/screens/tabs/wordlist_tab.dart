import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class WordlistTab extends StatelessWidget {
  const WordlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    final words = [
      {'word': 'Eloquent', 'def': 'Fluent or persuasive in speaking or writing.'},
      {'word': 'Resilient', 'def': 'Able to recoil or spring back into shape after bending.'},
      {'word': 'Lucid', 'def': 'Expressed clearly; easy to understand.'},
      {'word': 'Tenacious', 'def': 'Tending to keep a firm hold of something.'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Curated Lexicon'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: words.length,
        itemBuilder: (ctx, i) {
          final w = words[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.bookmark_border_rounded, color: AppTheme.primary),
              title: Text(w['word'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(w['def'] as String),
            ),
          );
        },
      ),
    );
  }
}
