import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vocabulary Mastery'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: const [
                  Text('148 Words', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: AppTheme.primary)),
                  SizedBox(height: 6),
                  Text('Mastered in Long-Term Memory', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.trending_up_rounded, color: AppTheme.primary, size: 36),
              title: const Text('Mastery Level: Advanced C1'),
              subtitle: const Text('Top 10% vocabulary percentile'),
            ),
          ),
        ],
      ),
    );
  }
}
